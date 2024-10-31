
# Cloud Technologies - My Personal Cloud Journey 🌥️

Welcome to my **Cloud Project**! Here, I aimed to build a foundational cloud system using various PaaS and IaaS components, enhancing my skills and understanding of cloud infrastructure. This project combines essential cloud tools and practices to create a functional and efficient cloud-based solution.

## 🚀 Project Overview

This project explores cloud architecture fundamentals by creating a system via [your cloud platform, e.g., AWS CloudFormation]. It showcases skills like managing cloud resources, implementing Lambda functions, and ensuring secure roles and permissions. Each step involved was a new challenge, helping me solidify my knowledge in cloud computing.

## 📂 Project Structure

This project includes several key components to meet its core objectives:

1. **System Description**:
   - A straightforward description of the system’s purpose and architecture, provided in `description.txt`.

2. **CloudFormation Resources**:
   - Infrastructure defined in CloudFormation templates for streamlined deployment. Resources like VPCs, S3 buckets, and Lambda setups are orchestrated here.

3. **Lambda Function**:
   - This project includes a serverless function managed via CloudFormation. It’s stored in an S3 bucket or configured inline, designed to be versatile and easily scalable.

4. **Roles and Permissions**:
   - Secure and well-defined roles and permissions, set up in CloudFormation, control access across different components.

5. **Scripts for System Management**:
   - **Setup Script (`setup.ps1`)**: This script creates CloudFormation stacks, sets up all necessary resources, and prevents accidental re-runs.
   - **Status Script (`status.ps1`)**: This script provides quick, essential information like IP addresses and resource names for system operation.
   - **Teardown Script (`teardown.ps1`)**: This script cleanly removes all resources by deleting the relevant CloudFormation stacks.

6. **Source Control**:
   - I maintained thorough version control, following good Git practices with multiple, detailed commits.

## 🛠️ Technologies Used

- **AWS CloudFormation**: To provision resources in a reliable, scalable way.
- **AWS Lambda**: For executing serverless functions.
- **PowerShell Scripts**: For efficient setup, status monitoring, and teardown of the cloud environment.
- **Git**: For version control and project tracking.

## 🌟 Key Lessons & Experiences

Through this project, I aimed to:

- Master foundational cloud concepts and PaaS/IaaS tools.
- Implement effective serverless functions and access control measures.
- Gain hands-on experience in designing cloud-native applications.

This journey has been a great stepping stone in my cloud development skills, setting the foundation for more advanced projects.

## ⚙️ Getting Started

To set up and explore this project, you’ll need:
1. A cloud account with necessary permissions (e.g., AWS).
2. PowerShell (for running setup scripts).
3. Clone the repository:
   ```bash
   git clone https://github.com/ryanhabis/cloud_ca1.git
   ```

4. Run `setup.ps1` to deploy the resources, and `status.ps1` to monitor them.

5. Use `teardown.ps1` when ready to remove all deployed resources.

## 💡 What’s Next?

This project has laid the groundwork for further cloud exploration. Future improvements might include:

- Adding more complex Lambda workflows.
- Introducing automated logging and monitoring tools.
- Expanding permissions configurations to handle advanced scenarios.
