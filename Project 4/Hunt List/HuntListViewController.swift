//
//  HuntListViewController.swift
//  Project 4
//
//  Created by Santos O. Martínez Braña on 3/20/23.
//

import UIKit

class HuntListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var emptyStateLabel: UILabel!

    var hunts = [Hunt]() {
        didSet {
            emptyStateLabel.isHidden = !hunts.isEmpty
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // UI candy: Hide 1st / top cell separator
        tableView.tableHeaderView = UIView()

        tableView.dataSource = self

        // Populate mocked data
        // Comment out this line if you want the app to load without any existing tasks.
        hunts = Hunt.mockedHunts
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // This will reload data in order to reflect any changes made to a task after returning from the detail screen.
        tableView.reloadData()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        // Segue to Compose View Controller
        if segue.identifier == "ComposeSegue" {

            // Since the segue is connected to the navigation controller that manages the ComposeViewController
            // we need to access the navigation controller first...
            if let composeNavController = segue.destination as? UINavigationController,
                // ...then get the actual ComposeViewController via the navController's `topViewController` property.
               let composeViewController = composeNavController.topViewController as? HuntComposeViewController {

                // Update the tasks array for any new task passed back via the `onComposeTask` closure.
                composeViewController.onComposeTask = { [weak self] hunt in
                    self?.hunts.append(hunt)
                }
            }

            // Segue to Detail View Controller
        } else if segue.identifier == "DetailSegue" {
            if let detailViewController = segue.destination as? HuntDetailViewController,
                // Get the index path for the current selected table view row.
               let selectedIndexPath = tableView.indexPathForSelectedRow {

                // Get the task associated with the slected index path
                let hunt = hunts[selectedIndexPath.row]

                // Set the selected task on the detail view controller.
                detailViewController.hunt = hunt
            }
        }
    }

}

extension HuntListViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hunts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HuntCell", for: indexPath) as? HuntCell else {
            fatalError("Unable to dequeue Hunt Cell")
        }

        cell.configure(with: hunts[indexPath.row])

        return cell
    }
}
