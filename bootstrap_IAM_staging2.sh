# USE v3 CLIENT
. admin-openrc

read -p "Enter mysql: username password hostname " MYSQL_USER MYSQL_PASSWORD MYSQL_HOSTNAME 

# SPECIAL SERVICE, ACTION
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO service (id, type, enabled, extra) VALUES ('8524c10f6aea4c2f89837ba285f153d7','*' ,'1'  ,'' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('374bc66468804f1ca2bee29b21ceddbf','jrn:jcs:*' ,'*' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('b62f8b9af5dc4129aff77bfc687baa01','jrn:jcs:iam:*' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('da7f4c94f23e4630bb3ef42081ef98bd','jrn:jcs:vpc:*' ,'vpc' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('5b90e2486a2d4ce1b1abe2c7d1bd74f6','jrn:jcs:rds:*' ,'rds' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('223cd3aa692b4523b786a3a22dd48e9d','jrn:jcs:dss:*' ,'dss' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('97ff21048bbb454cbbdfc74bc45e285e','jrn:jcs:sbs:*' ,'sbs' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('c219f18e41584553a9841d5fc4d51066','jrn:jcs:compute:*' ,'compute' )"


# INSERT SERVICE, ACTION, RESOURCE_TYPE, ACTION_RESOURCE_TYPE_MAPPING IN SERVICE TABLE
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO service (id, type, enabled, extra) VALUES ('M4sO5yD3qJ8jF0iX0bH3aT5fH4zD1lL2','iam' ,'1'  ,'' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO service (id, type, enabled, extra) VALUES ('S6dK6iX4tC2vW1xR1tF1pE0kK0hV9xE5','vpc' ,'1'  ,'' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO service (id, type, enabled, extra) VALUES ('Q5uB3hJ1iJ6cN3aE2fE3sJ2nL8iX2qJ4','rds' ,'1'  ,'' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO service (id, type, enabled, extra) VALUES ('O3dT2eX7pC6yM6pN2eZ8xR6oZ4rG0nR4','dss' ,'1'  ,'' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO service (id, type, enabled, extra) VALUES ('N9lQ9eG2pH3tF6lZ0bZ9eW7nV8oO5iW2','sbs' ,'1'  ,'' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO service (id, type, enabled, extra) VALUES ('Y2wE4uH7tD0pA1tU8mI1aC8zK2lX7aM7','compute' ,'1'  ,'' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO resource_type (id, name, service_type) VALUES ('P4zE9zG9nO4mH9yK3hV4jQ6bA9aD5tD8','User' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('I4yH3dE0pB0dH4bC5pP3eK7zM1iG1eE5','jrn:jcs:iam:CreateUser' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('I4yH3dE0pB0dH4bC5pP3eK7zM1iG1eE5' ,'P4zE9zG9nO4mH9yK3hV4jQ6bA9aD5tD8' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('E2xY3jX3uL1nK0jZ2dI1nR3yS6wR1wR0','jrn:jcs:iam:UpdateUser' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('E2xY3jX3uL1nK0jZ2dI1nR3yS6wR1wR0' ,'P4zE9zG9nO4mH9yK3hV4jQ6bA9aD5tD8' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('I5uH3cW0hN0vW9mP7zR6lF5rI4rD0uA0','jrn:jcs:iam:DeleteUser' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('I5uH3cW0hN0vW9mP7zR6lF5rI4rD0uA0' ,'P4zE9zG9nO4mH9yK3hV4jQ6bA9aD5tD8' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO resource_type (id, name, service_type) VALUES ('D3fP4oQ2hK3eE9mN1vY8nU1hU7kP6iP8','Credential' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('V8qR1xN6qO5lF5cB1fE8pT8fL0xI0nR0','jrn:jcs:iam:CreateCredential' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('V8qR1xN6qO5lF5cB1fE8pT8fL0xI0nR0' ,'D3fP4oQ2hK3eE9mN1vY8nU1hU7kP6iP8' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('Z3wP7xI8mC8sN3pV4fH6zD7xH7dK8pF4','jrn:jcs:iam:GetCredential' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('Z3wP7xI8mC8sN3pV4fH6zD7xH7dK8pF4' ,'D3fP4oQ2hK3eE9mN1vY8nU1hU7kP6iP8' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('B9eI2eJ0eS5kJ9bM5oR5vJ0iR9iE8yQ1','jrn:jcs:iam:DeleteCredential' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('B9eI2eJ0eS5kJ9bM5oR5vJ0iR9iE8yQ1' ,'D3fP4oQ2hK3eE9mN1vY8nU1hU7kP6iP8' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('B0iT2cT0bW2xG3zR3oQ1aE8eE2fE0dU8','jrn:jcs:iam:CreatePolicy' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('B0iT2cT0bW2xG3zR3oQ1aE8eE2fE0dU8' ,'D3fP4oQ2hK3eE9mN1vY8nU1hU7kP6iP8' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO resource_type (id, name, service_type) VALUES ('X1oC0tT2lG9sI2hH2hX0kC2eP4xY4qQ1','Policy' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('V6mN5cR9cS0bF8iG4zF3xG9iO4xL7yV9','jrn:jcs:iam:GetPolicy' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('V6mN5cR9cS0bF8iG4zF3xG9iO4xL7yV9' ,'X1oC0tT2lG9sI2hH2hX0kC2eP4xY4qQ1' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('Y2hH3fI8kC6tN5hT9wJ7oB4jW0oO8bC2','jrn:jcs:iam:UpdatePolicy' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('Y2hH3fI8kC6tN5hT9wJ7oB4jW0oO8bC2' ,'X1oC0tT2lG9sI2hH2hX0kC2eP4xY4qQ1' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('D2xC8rL9yM0hW1kK2wY0jX0oT3aZ5nH2','jrn:jcs:iam:DeletePolicy' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('D2xC8rL9yM0hW1kK2wY0jX0oT3aZ5nH2' ,'X1oC0tT2lG9sI2hH2hX0kC2eP4xY4qQ1' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('Q1dL3eE8aU1dU1sR3dO4vH4tE5zN7xY0','jrn:jcs:iam:ListPolicy' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('Q1dL3eE8aU1dU1sR3dO4vH4tE5zN7xY0' ,'X1oC0tT2lG9sI2hH2hX0kC2eP4xY4qQ1' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('C5vA4qA0wP4dE6oG6xH9aU5xH4rG3aP1','jrn:jcs:iam:AttachPolicyToUser' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('C5vA4qA0wP4dE6oG6xH9aU5xH4rG3aP1' ,'X1oC0tT2lG9sI2hH2hX0kC2eP4xY4qQ1' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('C7zY2cS1nD5uV7sG7lC2yR5tV6mY0sP9','jrn:jcs:iam:DetachPolicyFromUser' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('C7zY2cS1nD5uV7sG7lC2yR5tV6mY0sP9' ,'X1oC0tT2lG9sI2hH2hX0kC2eP4xY4qQ1' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('H2pQ1mP7wG5nD0wN0oP5vX8iZ5eH4xI0','jrn:jcs:iam:AttachPolicyToGroup' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('H2pQ1mP7wG5nD0wN0oP5vX8iZ5eH4xI0' ,'X1oC0tT2lG9sI2hH2hX0kC2eP4xY4qQ1' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('Q8fN1hJ3cP5tT9oL2yE0rN5bI7pK1kW9','jrn:jcs:iam:DetachPolicyFromGroup' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('Q8fN1hJ3cP5tT9oL2yE0rN5bI7pK1kW9' ,'X1oC0tT2lG9sI2hH2hX0kC2eP4xY4qQ1' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO resource_type (id, name, service_type) VALUES ('U5zJ5yA3nI8cJ7pQ0fH1zS2nC2iD8uM9','Account' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('F7hN5wJ4mZ7oO0oX2wN2nZ2pU2tW1yK9','jrn:jcs:iam:CreateAccount' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('F7hN5wJ4mZ7oO0oX2wN2nZ2pU2tW1yK9' ,'U5zJ5yA3nI8cJ7pQ0fH1zS2nC2iD8uM9' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO resource_type (id, name, service_type) VALUES ('H0aY6bI3bC4rE7fE2eB1mT0hQ3uZ9mX1','Group' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('G5aO8aB0vH8vO4dN6uV2yC1xJ9dZ7qD8','jrn:jcs:iam:CreateGroup' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('G5aO8aB0vH8vO4dN6uV2yC1xJ9dZ7qD8' ,'H0aY6bI3bC4rE7fE2eB1mT0hQ3uZ9mX1' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('R6sD9cN8sA8qK0xY7xS6nY8mL2mY1zS3','jrn:jcs:iam:GetGroup' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('R6sD9cN8sA8qK0xY7xS6nY8mL2mY1zS3' ,'H0aY6bI3bC4rE7fE2eB1mT0hQ3uZ9mX1' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('H9yS3vO3nG3tM0uT5qK8rL7mL2aB1xA3','jrn:jcs:iam:UpdateGroup' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('H9yS3vO3nG3tM0uT5qK8rL7mL2aB1xA3' ,'H0aY6bI3bC4rE7fE2eB1mT0hQ3uZ9mX1' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('O1xN5nX4nH8hT4rO7oM2lC0uC8qH6rD2','jrn:jcs:iam:DeleteGroup' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('O1xN5nX4nH8hT4rO7oM2lC0uC8qH6rD2' ,'H0aY6bI3bC4rE7fE2eB1mT0hQ3uZ9mX1' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('W9sJ0tV1lJ0wN9cT8xG9cQ5kN5rX1vL4','jrn:jcs:iam:ListUsersInGroup' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('W9sJ0tV1lJ0wN9cT8xG9cQ5kN5rX1vL4' ,'H0aY6bI3bC4rE7fE2eB1mT0hQ3uZ9mX1' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('I1rK5jJ3iG2pG4mJ5cS9fI4qB7vC2aL0','jrn:jcs:iam:ListGroupsForUser' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('I1rK5jJ3iG2pG4mJ5cS9fI4qB7vC2aL0' ,'H0aY6bI3bC4rE7fE2eB1mT0hQ3uZ9mX1' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('I6uF6oK6qJ7tA0lE0hF1jI6mW6uK6mY5','jrn:jcs:iam:AddUserToGroup' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('I6uF6oK6qJ7tA0lE0hF1jI6mW6uK6mY5' ,'H0aY6bI3bC4rE7fE2eB1mT0hQ3uZ9mX1' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('S7eQ0wG0eD3pP6aW2aQ1vK3eP4kV1iK9','jrn:jcs:iam:RemoveUserFromGroup' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('S7eQ0wG0eD3pP6aW2aQ1vK3eP4kV1iK9' ,'H0aY6bI3bC4rE7fE2eB1mT0hQ3uZ9mX1' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('I1nJ0dS1fH0fW8mF7kH5kV3hL0qF2kJ3','jrn:jcs:iam:CheckUserInGroup' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('I1nJ0dS1fH0fW8mF7kH5kV3hL0qF2kJ3' ,'H0aY6bI3bC4rE7fE2eB1mT0hQ3uZ9mX1' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO resource_type (id, name, service_type) VALUES ('Z8yW2hN4xR9lO8cB7rF3rC9mY3pH9kV5','Volume' ,'sbs' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('Q1aY3kL5iU7wA9rI5oD2cJ9nL8cO8xD9','jrn:jcs:sbs:CreateVolume' ,'sbs' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('Q1aY3kL5iU7wA9rI5oD2cJ9nL8cO8xD9' ,'Z8yW2hN4xR9lO8cB7rF3rC9mY3pH9kV5' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('O2wP6aN5qN7pT7cP2qT3dY2vY5xA7fQ9','jrn:jcs:sbs:DeleteVolume' ,'sbs' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('O2wP6aN5qN7pT7cP2qT3dY2vY5xA7fQ9' ,'Z8yW2hN4xR9lO8cB7rF3rC9mY3pH9kV5' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('N2dM6xG0hT0jL1lG0aH9zJ0cR1xV8xF5','jrn:jcs:sbs:DescribeVolumes' ,'sbs' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('N2dM6xG0hT0jL1lG0aH9zJ0cR1xV8xF5' ,'Z8yW2hN4xR9lO8cB7rF3rC9mY3pH9kV5' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('H4eA7vD5pT8bN3jM4sO1iL6xR8hE6oU7','jrn:jcs:sbs:AttachVolume' ,'sbs' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('H4eA7vD5pT8bN3jM4sO1iL6xR8hE6oU7' ,'Z8yW2hN4xR9lO8cB7rF3rC9mY3pH9kV5' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('C8sH3mA4xT3pP5pC6aD2mK0lG2qO8eV1','jrn:jcs:sbs:DetachVolume' ,'sbs' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('C8sH3mA4xT3pP5pC6aD2mK0lG2qO8eV1' ,'Z8yW2hN4xR9lO8cB7rF3rC9mY3pH9kV5' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO resource_type (id, name, service_type) VALUES ('P5tH3jU5iS9jT4sP5dJ8dE4dM6nB9eW0','Snapshot' ,'sbs' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('A1qM9aU3iC4fP8sZ9mT4xX0nI2bP3bO5','jrn:jcs:sbs:CreateSnapshot' ,'sbs' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('A1qM9aU3iC4fP8sZ9mT4xX0nI2bP3bO5' ,'P5tH3jU5iS9jT4sP5dJ8dE4dM6nB9eW0' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('C0qM8vS6pY4vO0aU6hO6iY4nR2tA3qE7','jrn:jcs:sbs:DeleteSnapshot' ,'sbs' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('C0qM8vS6pY4vO0aU6hO6iY4nR2tA3qE7' ,'P5tH3jU5iS9jT4sP5dJ8dE4dM6nB9eW0' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('D0vI8jE9uP0qB6wQ4pJ7zN0hT9qP5mU4','jrn:jcs:sbs:DescribeSnapshots' ,'sbs' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('D0vI8jE9uP0qB6wQ4pJ7zN0hT9qP5mU4' ,'P5tH3jU5iS9jT4sP5dJ8dE4dM6nB9eW0' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO resource_type (id, name, service_type) VALUES ('T5wV4mE5fN8xO7qS9kG3dH1wD3zE2sW2','Instance' ,'compute' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('D7qG6eX0bV0zD9bV4dP5yP1xD2tN0kF6','jrn:jcs:compute:ListInstanceTypes' ,'compute' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('D7qG6eX0bV0zD9bV4dP5yP1xD2tN0kF6' ,'T5wV4mE5fN8xO7qS9kG3dH1wD3zE2sW2' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('E4dZ1nN2xE5hB8rZ3xB3xC9nK6vJ0pF0','jrn:jcs:compute:ListInstanceType' ,'compute' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('E4dZ1nN2xE5hB8rZ3xB3xC9nK6vJ0pF0' ,'T5wV4mE5fN8xO7qS9kG3dH1wD3zE2sW2' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('D2sX9mP0zY5rJ2hM5hU3pW0uL1yB0rV5','jrn:jcs:compute:StartInstance' ,'compute' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('D2sX9mP0zY5rJ2hM5hU3pW0uL1yB0rV5' ,'T5wV4mE5fN8xO7qS9kG3dH1wD3zE2sW2' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('M3dU0pJ2pW0tC0mN3oA6kH4wX0xF7tT2','jrn:jcs:compute:StopInstance' ,'compute' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('M3dU0pJ2pW0tC0mN3oA6kH4wX0xF7tT2' ,'T5wV4mE5fN8xO7qS9kG3dH1wD3zE2sW2' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('D9nI8xW0oD3nZ3wZ2qB0kS3jJ9cF2bF3','jrn:jcs:compute:RebootInstance' ,'compute' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('D9nI8xW0oD3nZ3wZ2qB0kS3jJ9cF2bF3' ,'T5wV4mE5fN8xO7qS9kG3dH1wD3zE2sW2' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('H4wO3iD9zK7sG7jU5aS4eY8mD1mC5pW3','jrn:jcs:compute:TerminateInstance' ,'compute' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('H4wO3iD9zK7sG7jU5aS4eY8mD1mC5pW3' ,'T5wV4mE5fN8xO7qS9kG3dH1wD3zE2sW2' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('C8qU5uI7iO2nZ0uG7aJ2zT3fW5sW5tF6','jrn:jcs:compute:ListInstances' ,'compute' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('C8qU5uI7iO2nZ0uG7aJ2zT3fW5sW5tF6' ,'T5wV4mE5fN8xO7qS9kG3dH1wD3zE2sW2' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('N2yO6rS2bZ5fC4fM2qF9yV8zG7wQ6oL5','jrn:jcs:compute:RunInstances' ,'compute' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('N2yO6rS2bZ5fC4fM2qF9yV8zG7wQ6oL5' ,'T5wV4mE5fN8xO7qS9kG3dH1wD3zE2sW2' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('D3mL5oR8pB7yS0aV9cK4pL8xT2sN5qJ8','jrn:jcs:compute:UseImageForRunInstance' ,'compute' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('D3mL5oR8pB7yS0aV9cK4pL8xT2sN5qJ8' ,'T5wV4mE5fN8xO7qS9kG3dH1wD3zE2sW2' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('N9qY5tH6jM7eB4jP6eN6hA9yW1sP0uE5','jrn:jcs:compute:UseInstanceTypeForRunInstance' ,'compute' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('N9qY5tH6jM7eB4jP6eN6hA9yW1sP0uE5' ,'T5wV4mE5fN8xO7qS9kG3dH1wD3zE2sW2' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('L9iF6jP5wW5nM3jS8jO6iE1lU2eU6dD2','jrn:jcs:compute:AttachSubnetToInstance' ,'compute' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('L9iF6jP5wW5nM3jS8jO6iE1lU2eU6dD2' ,'T5wV4mE5fN8xO7qS9kG3dH1wD3zE2sW2' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('U9kN6jB1iU5uZ4hL8dD4fX3qD7pC6sB9','jrn:jcs:compute:UsePrivateIPForInstance' ,'compute' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('U9kN6jB1iU5uZ4hL8dD4fX3qD7pC6sB9' ,'T5wV4mE5fN8xO7qS9kG3dH1wD3zE2sW2' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('U4yB5aW5pW0wJ8lR3yI0rU3fJ3lR7pS5','jrn:jcs:compute:UseKeyForInstance' ,'compute' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('U4yB5aW5pW0wJ8lR3yI0rU3fJ3lR7pS5' ,'T5wV4mE5fN8xO7qS9kG3dH1wD3zE2sW2' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO resource_type (id, name, service_type) VALUES ('N1wY2rA0rR0nQ8iP3mX4oK6qJ1pU8oR5','KeyValuePair' ,'compute' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('Z5nC3cF7yV5fQ5mL9tQ5vR6rU9tF7sQ2','jrn:jcs:compute:CreateKeyPair' ,'compute' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('Z5nC3cF7yV5fQ5mL9tQ5vR6rU9tF7sQ2' ,'N1wY2rA0rR0nQ8iP3mX4oK6qJ1pU8oR5' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO resource_type (id, name, service_type) VALUES ('D7qS9jI9tV7mX3lL7bM6hG5iT2zV9iX3','Volume' ,'compute' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('V8dD0zV2eG5bB0dR8wA8vT7lX9qM9xS5','jrn:jcs:compute:SetPersistVolume' ,'compute' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('V8dD0zV2eG5bB0dR8wA8vT7lX9qM9xS5' ,'D7qS9jI9tV7mX3lL7bM6hG5iT2zV9iX3' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO resource_type (id, name, service_type) VALUES ('A5zP6mG7pL2qQ9hU2xR7pB2oS4jW4dW8','Image' ,'compute' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('L5eN7dE4cV1xG1rZ5sE9kM5bP0eT8iQ6','jrn:jcs:compute:ListImages' ,'compute' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('L5eN7dE4cV1xG1rZ5sE9kM5bP0eT8iQ6' ,'A5zP6mG7pL2qQ9hU2xR7pB2oS4jW4dW8' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('R3zY8qG2uX5bC5aP8cI7wX3iS3cZ8lI0','jrn:jcs:compute:ListImage' ,'compute' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('R3zY8qG2uX5bC5aP8cI7wX3iS3cZ8lI0' ,'A5zP6mG7pL2qQ9hU2xR7pB2oS4jW4dW8' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO resource_type (id, name, service_type) VALUES ('H1aS1fV7yB2eH4xZ3oP7aP1mO8mB0oF7','Bucket' ,'dss' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('G6iB6bU7wP9jY1rI6wO3oO7pL3zA9bK7','jrn:jcs:dss:ListBucket' ,'dss' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('G6iB6bU7wP9jY1rI6wO3oO7pL3zA9bK7' ,'H1aS1fV7yB2eH4xZ3oP7aP1mO8mB0oF7' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('F9kI5mF5bS0zF0uD6cO9mL1hA1bN4tK2','jrn:jcs:dss:CreateBucket' ,'dss' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('F9kI5mF5bS0zF0uD6cO9mL1hA1bN4tK2' ,'H1aS1fV7yB2eH4xZ3oP7aP1mO8mB0oF7' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('M2vC6oO0pK8fY9lP5zP1hF8iC7zR5oR1','jrn:jcs:dss:DeleteBucket' ,'dss' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('M2vC6oO0pK8fY9lP5zP1hF8iC7zR5oR1' ,'H1aS1fV7yB2eH4xZ3oP7aP1mO8mB0oF7' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('P4lA8nB8wK0hL9cO3mU1lS6pQ0fU3eG8','jrn:jcs:dss:HeadBucket' ,'dss' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('P4lA8nB8wK0hL9cO3mU1lS6pQ0fU3eG8' ,'H1aS1fV7yB2eH4xZ3oP7aP1mO8mB0oF7' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('Q8kL4iX8bZ5rM2hL2eD0oK9jZ7kV8kA9','jrn:jcs:dss:PostBucket' ,'dss' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('Q8kL4iX8bZ5rM2hL2eD0oK9jZ7kV8kA9' ,'H1aS1fV7yB2eH4xZ3oP7aP1mO8mB0oF7' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('S1lJ8dQ9lB6pP2dS1vM5fR2iL2mH1pY9','jrn:jcs:dss:CopyBucket' ,'dss' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('S1lJ8dQ9lB6pP2dS1vM5fR2iL2mH1pY9' ,'H1aS1fV7yB2eH4xZ3oP7aP1mO8mB0oF7' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('M0oX7jE8fS6zX7wC9aN5eO4cQ2uA5zE5','jrn:jcs:dss:OptionsBucket' ,'dss' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('M0oX7jE8fS6zX7wC9aN5eO4cQ2uA5zE5' ,'H1aS1fV7yB2eH4xZ3oP7aP1mO8mB0oF7' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO resource_type (id, name, service_type) VALUES ('Y7vX8xO5qS7vM7yA1qT2pW9lT8oK0cK4','Object' ,'dss' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('T1jH2kN0pL5uF3yD6wL9aH0oJ4nK4vN0','jrn:jcs:dss:GetObject' ,'dss' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('T1jH2kN0pL5uF3yD6wL9aH0oJ4nK4vN0' ,'Y7vX8xO5qS7vM7yA1qT2pW9lT8oK0cK4' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('Y3aL1pX9xV3hT5lC9bO2oO3fO3pM3yS0','jrn:jcs:dss:CreateObject' ,'dss' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('Y3aL1pX9xV3hT5lC9bO2oO3fO3pM3yS0' ,'Y7vX8xO5qS7vM7yA1qT2pW9lT8oK0cK4' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('W9uG5xL3eT9jE8wD5fQ8hM0iX5hV4mK3','jrn:jcs:dss:DeleteObject' ,'dss' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('W9uG5xL3eT9jE8wD5fQ8hM0iX5hV4mK3' ,'Y7vX8xO5qS7vM7yA1qT2pW9lT8oK0cK4' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('H1pE3iQ3wK0kT2zN8iT8dB3uP4pK9mP0','jrn:jcs:dss:HeadObject' ,'dss' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('H1pE3iQ3wK0kT2zN8iT8dB3uP4pK9mP0' ,'Y7vX8xO5qS7vM7yA1qT2pW9lT8oK0cK4' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('O6xE4cZ3kR4uY4tV6hD3lY7zV1qP2qF8','jrn:jcs:dss:PostObject' ,'dss' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('O6xE4cZ3kR4uY4tV6hD3lY7zV1qP2qF8' ,'Y7vX8xO5qS7vM7yA1qT2pW9lT8oK0cK4' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('X2rK7pW8aS8pX6eX6bU4eK8lK0bW4jM6','jrn:jcs:dss:CopyObject' ,'dss' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('X2rK7pW8aS8pX6eX6bU4eK8lK0bW4jM6' ,'Y7vX8xO5qS7vM7yA1qT2pW9lT8oK0cK4' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('A3iX7zB6iM0nR3zE2bD5wK3tB6qJ2mD1','jrn:jcs:dss:OptionsObject' ,'dss' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('A3iX7zB6iM0nR3zE2bD5wK3tB6qJ2mD1' ,'Y7vX8xO5qS7vM7yA1qT2pW9lT8oK0cK4' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('I2sQ1bW2mM8oO9xO9wF8iX1qK3jZ6xO7','jrn:jcs:dss:KeystoneMaxAction' ,'dss' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action_resource_type_mapping (action_id, resource_type_id) VALUES ('I2sQ1bW2mM8oO9xO9wF8iX1qK3jZ6xO7' ,'Y7vX8xO5qS7vM7yA1qT2pW9lT8oK0cK4' )"

# SPECIAL SERVICE, ACTION
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO service (id, type, enabled, extra) VALUES ('8524c10f6aea4c2f89837ba285f153d7','*' ,'1'  ,'' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('374bc66468804f1ca2bee29b21ceddbf','jrn:jcs:*' ,'*' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('b62f8b9af5dc4129aff77bfc687baa01','jrn:jcs:iam:*' ,'iam' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('da7f4c94f23e4630bb3ef42081ef98bd','jrn:jcs:vpc:*' ,'vpc' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('5b90e2486a2d4ce1b1abe2c7d1bd74f6','jrn:jcs:rds:*' ,'rds' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('223cd3aa692b4523b786a3a22dd48e9d','jrn:jcs:dss:*' ,'dss' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('97ff21048bbb454cbbdfc74bc45e285e','jrn:jcs:sbs:*' ,'sbs' )"
mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "INSERT INTO action (id, action_name, service_type) VALUES ('c219f18e41584553a9841d5fc4d51066','jrn:jcs:compute:*' ,'compute' )"


##############################################
#	     CUSTOMER ACCOUNTS               #
##############################################

# CREATE DEFAULT CUSTOMER ACCOUNTS:
curl -s \
 -H "X-Auth-Token: 7623eb5b44254209e95e6d272cb16777" \
 -H "Content-Type: application/json" \
 -d '{ "domain": { "name": "dss", "password" : "Reliance111@"}}' \
 https://iam.ind-west-1.staging.jiocloudservices.com:5000/v3/domains | python -mjson.tool
  
curl -s \
 -H "X-Auth-Token: 7623eb5b44254209e95e6d272cb16777" \
 -H "Content-Type: application/json" \
 -d '{ "domain": { "name": "sbs", "password" : "Reliance111@"}}' \
 https://iam.ind-west-1.staging.jiocloudservices.com:5000/v3/domains | python -mjson.tool

curl -s \
 -H "X-Auth-Token: 7623eb5b44254209e95e6d272cb16777" \
 -H "Content-Type: application/json" \
 -d '{ "domain": { "name": "rds", "password" : "Reliance111@"}}' \
 https://iam.ind-west-1.staging.jiocloudservices.com:5000/v3/domains | python -mjson.tool

curl -s \
 -H "X-Auth-Token: 7623eb5b44254209e95e6d272cb16777" \
 -H "Content-Type: application/json" \
 -d '{ "domain": { "name": "compute", "password" : "Reliance111@"}}' \
 https://iam.ind-west-1.staging.jiocloudservices.com:5000/v3/domains | python -mjson.tool

curl -s \
 -H "X-Auth-Token: 7623eb5b44254209e95e6d272cb16777" \
 -H "Content-Type: application/json" \
 -d '{ "domain": { "name": "iam", "password" : "Reliance111@"}}' \
 https://iam.ind-west-1.staging.jiocloudservices.com:5000/v3/domains | python -mjson.tool

curl -s \
 -H "X-Auth-Token: 7623eb5b44254209e95e6d272cb16777" \
 -H "Content-Type: application/json" \
 -d '{ "domain": { "name": "vpc", "password" : "Reliance111@"}}' \
 https://iam.ind-west-1.staging.jiocloudservices.com:5000/v3/domains | python -mjson.tool

curl -s \
 -H "X-Auth-Token: 7623eb5b44254209e95e6d272cb16777" \
 -H "Content-Type: application/json" \
 -d '{ "domain": { "name": "Vishal.Chaturvedi", "password" : "Reliance111@"}}' \
 https://iam.ind-west-1.staging.jiocloudservices.com:5000/v3/domains | python -mjson.tool

curl -s \
 -H "X-Auth-Token: 7623eb5b44254209e95e6d272cb16777" \
 -H "Content-Type: application/json" \
 -d '{ "domain": { "name": "Valliappan.Letchumanan", "password" : "Reliance111@"}}' \
 https://iam.ind-west-1.staging.jiocloudservices.com:5000/v3/domains | python -mjson.tool

curl -s \
 -H "X-Auth-Token: 7623eb5b44254209e95e6d272cb16777" \
 -H "Content-Type: application/json" \
 -d '{ "domain": { "name": "Varughese.Cherian", "password" : "Reliance111@"}}' \
 https://iam.ind-west-1.staging.jiocloudservices.com:5000/v3/domains | python -mjson.tool

curl -s \
 -H "X-Auth-Token: 7623eb5b44254209e95e6d272cb16777" \
 -H "Content-Type: application/json" \
 -d '{ "domain": { "name": "NaMo", "password" : "Reliance111@"}}' \
 https://iam.ind-west-1.staging.jiocloudservices.com:5000/v3/domains | python -mjson.tool

curl -s \
 -H "X-Auth-Token: 7623eb5b44254209e95e6d272cb16777" \
 -H "Content-Type: application/json" \
 -d '{ "domain": { "name": "RaGa", "password" : "Reliance111@"}}' \
 https://iam.ind-west-1.staging.jiocloudservices.com:5000/v3/domains | python -mjson.tool


# GET USER_IDs IN A VARIABLE
id_dss=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM user WHERE user.name='dss'"`
id_sbs=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM user WHERE user.name='sbs'"`
id_rds=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM user WHERE user.name='rds'"`
id_compute=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM user WHERE user.name='compute'"`
id_iam=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM user WHERE user.name='iam'"`
id_vpc=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM user WHERE user.name='vpc'"`
id_Vishal=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM user WHERE user.name='Vishal.Chaturvedi'"`
id_Val=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM user WHERE user.name='Valliappan.Letchumanan'"`
id_Varughese=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM user WHERE user.name='Varughese.Cherian'"`
id_NaMo=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM user WHERE user.name='NaMo'"`
id_RaGa=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM user WHERE user.name='RaGa'"`

# EXTRACT CORRECT USER_IDs
read junk id_dss <<< $id_dss
read junk id_sbs <<< $id_sbs
read junk id_rds <<< $id_rds
read junk id_compute <<< $id_compute
read junk id_iam <<< $id_iam
read junk id_vpc <<< $id_vpc
read junk id_Vishal <<< $id_Vishal
read junk id_Val <<< $id_Val
read junk id_Varughese <<< $id_Varughese
read junk id_NaMo <<< $id_NaMo
read junk id_RaGa <<< $id_RaGa

OS_TOKEN='7623eb5b44254209e95e6d272cb16777'

# GENERATE ACCESS-SECRET KEY CREDENTIALS
curl -i -H "Content-Type: application/json" -H "X-Auth-Token: $OS_TOKEN" -d '{"credential":{"user_id": "'"$id_dss"'","blob": "{\"access\":\"c312c8c23a9e45398003b256759cef05\",\"secret\":\"39d454a4c4ea4ea1bb7ccdac7c3ba389\"}","project_id": "'"$id_dss"'","type": "ec2"}}' https://iam.ind-west-1.staging.jiocloudservices.com:35357/v3/credentials

curl -i -H "Content-Type: application/json" -H "X-Auth-Token: $OS_TOKEN" -d '{"credential":{"user_id": "'"$id_sbs"'","blob": "{\"access\":\"cecda7a3de6d4eb997460d1524135967\",\"secret\":\"6544313324fe4b20991d77e3481a8446\"}","project_id": "'"$id_sbs"'","type": "ec2"}}' https://iam.ind-west-1.staging.jiocloudservices.com:35357/v3/credentials

curl -i -H "Content-Type: application/json" -H "X-Auth-Token: $OS_TOKEN" -d '{"credential":{"user_id": "'"$id_rds"'","blob": "{\"access\":\"62f734ab29b84ba0976795632687b53e\",\"secret\":\"506f88343c0d49849db0a04316e338b9\"}","project_id": "'"$id_rds"'","type": "ec2"}}' https://iam.ind-west-1.staging.jiocloudservices.com:35357/v3/credentials

curl -i -H "Content-Type: application/json" -H "X-Auth-Token: $OS_TOKEN" -d '{"credential":{"user_id": "'"$id_compute"'","blob": "{\"access\":\"9c09627868e647f393ab14e2f29ca9c1\",\"secret\":\"8bd611959ba7491c98ede613d1a461f6\"}","project_id": "'"$id_compute"'","type": "ec2"}}' https://iam.ind-west-1.staging.jiocloudservices.com:35357/v3/credentials

curl -i -H "Content-Type: application/json" -H "X-Auth-Token: $OS_TOKEN" -d '{"credential":{"user_id": "'"$id_iam"'","blob": "{\"access\":\"55a51e48a6ad4f34b2a270d1fc218800\",\"secret\":\"e8caa31664404adda03d18da622f9fde\"}","project_id": "'"$id_iam"'","type": "ec2"}}' https://iam.ind-west-1.staging.jiocloudservices.com:35357/v3/credentials

curl -i -H "Content-Type: application/json" -H "X-Auth-Token: $OS_TOKEN" -d '{"credential":{"user_id": "'"$id_vpc"'","blob": "{\"access\":\"1b0b5129b0fb47d393ca3d1ab76d6059\",\"secret\":\"be14df3237f94bd3b73ced73a35a6515\"}","project_id": "'"$id_vpc"'","type": "ec2"}}' https://iam.ind-west-1.staging.jiocloudservices.com:35357/v3/credentials

curl -i -H "Content-Type: application/json" -H "X-Auth-Token: $OS_TOKEN" -d '{"credential":{"user_id": "'"$id_Vishal"'","blob": "{\"access\":\"5bf272d763904dc4974c21c643620977\",\"secret\":\"c0b0b675a7854b4b912abc0a004953e4\"}","project_id": "'"$id_Vishal"'","type": "ec2"}}' https://iam.ind-west-1.staging.jiocloudservices.com:35357/v3/credentials

curl -i -H "Content-Type: application/json" -H "X-Auth-Token: $OS_TOKEN" -d '{"credential":{"user_id": "'"$id_Val"'","blob": "{\"access\":\"340641dcca8e4189811ed143b73fb2f9\",\"secret\":\"5ddb5fd0f0c34fc4bd61cc3022158d30\"}","project_id": "'"$id_Val"'","type": "ec2"}}' https://iam.ind-west-1.staging.jiocloudservices.com:35357/v3/credentials

curl -i -H "Content-Type: application/json" -H "X-Auth-Token: $OS_TOKEN" -d '{"credential":{"user_id": "'"$id_Varughese"'","blob": "{\"access\":\"8a3c3250a88445be8db33df5bece93ca\",\"secret\":\"76c8e297a4064b548d69a0f1776e101a\"}","project_id": "'"$id_Varughese"'","type": "ec2"}}' https://iam.ind-west-1.staging.jiocloudservices.com:35357/v3/credentials

curl -i -H "Content-Type: application/json" -H "X-Auth-Token: $OS_TOKEN" -d '{"credential":{"user_id": "'"$id_NaMo"'","blob": "{\"access\":\"e605d3a5000a4a04a365d2ffedd315bc\",\"secret\":\"b8067dde244d4f9c847e869653fd8df9\"}","project_id": "'"$id_NaMo"'","type": "ec2"}}' https://iam.ind-west-1.staging.jiocloudservices.com:35357/v3/credentials

curl -i -H "Content-Type: application/json" -H "X-Auth-Token: $OS_TOKEN" -d '{"credential":{"user_id": "'"$id_RaGa"'","blob": "{\"access\":\"fc63f873343d4cf083735c52d93c137f\",\"secret\":\"598822379302429bbf482fd50fc1598f\"}","project_id": "'"$id_RaGa"'","type": "ec2"}}' https://iam.ind-west-1.staging.jiocloudservices.com:35357/v3/credentials


