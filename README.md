# 🧩 What is Virtualization?

Virtualization is a technology that enables the creation of **virtual environments** from a single physical machine, allowing for more efficient use of resources by distributing them across computing environments.

Using software, virtualization creates an **abstraction layer** over computer hardware, dividing a single system’s components such as **processors, memory, networks, and storage** into multiple **virtual machines (VMs)**.  
Each VM runs its own operating system (OS) and behaves like a separate physical computer, despite sharing the same underlying hardware.

# 💻 What is a Virtual Machine?

A **virtual machine (VM)** is a virtual representation or emulation of a physical computer that uses **software instead of hardware** to run programs and deploy applications.

By using the resources of a single physical machine memory, CPU, network interface, and storage VMs enable businesses to run **multiple machines virtually** (with different operating systems) on a single device.

VMs are typically referred to as **guests**, with one or more guest machines running on a physical machine called the **host**.  
VM technology includes **virtual servers**, **virtual server instances (VSIs)**, and **virtual private servers (VPSs)**.

<div align="center">
  <img src="https://raw.githubusercontent.com/Frontendab/Born2beRoot/refs/heads/main/attachment/virtual_machines_diagram.webp" width="75%" height="75%" alt="Virtual machines diagram" />
  <p><sub>🖥️ <em>Virtual Machines Diagram</em></sub></p>
</div>

# ⚙️ How Do Virtual Machines Work?

As previously explained, virtualization relies on **hypervisor technology** a software layer placed on a physical computer or server (also known as a **bare metal server**) that allows the system to separate its operating system and applications from its hardware.

These virtual machines can run their own OS and applications **independently** while still sharing the original resources (e.g., memory, RAM, storage) from the server, which the hypervisor manages.  
The hypervisor acts like a **traffic controller**, allocating resources to virtual machines and ensuring they don’t disrupt each other.

There are two primary types of hypervisors:

- **Type 1 hypervisors**
- **Type 2 hypervisors**

## 🧱 1. Type 1 Hypervisors

Type 1 hypervisors run **directly on the physical hardware** (usually a server), replacing the operating system (OS).  
Typically, you use a separate software product to create and manipulate VMs on the hypervisor.

Some management tools, such as **VMware vSphere**, let you select a guest OS to install in the VM. You can use one VM as a **template** for others and duplicate it to create new ones.  
Depending on your needs, you might create multiple VM templates for different purposes such as **software testing**, **production databases**, or **development environments**.

> Example: **KVM (Kernel-based Virtual Machine)** is a Type 1 hypervisor.

## 🧩 2. Type 2 Hypervisors

Type 2 hypervisors run as **applications within a host OS** and usually target **single-user desktop or notebook platforms**.  
With a type 2 hypervisor, you manually create a VM and install a guest OS inside it.  

You can use the hypervisor to allocate physical resources to your VM, manually setting the number of **processor cores** and **memory** it can use.  
Depending on the hypervisor’s capabilities, you can set options such as **3D acceleration for graphics**.

> Examples: **VMware Workstation Pro** and **Oracle VirtualBox**.

<div align="center">
  <img src="https://raw.githubusercontent.com/Frontendab/Born2beRoot/refs/heads/main/attachment/type2-hypervisor-diagram.webp" width="75%" height="75%" alt="Type 2 hypervisor diagram" />
  <p><sub>🧠 <em>Type 2 Hypervisor Diagram</em></sub></p>
</div>

# 🎯 The Purpose of Virtual Machines

Virtualization technology has revolutionized the way we deploy and manage computer systems.  
One of the key components of virtualization is the concept of **virtual machines (VMs)** software-based emulations of physical computers capable of running their own OS and applications.

**The primary purpose** of virtual machines is to:

- Efficiently utilize **hardware resources**
- Enhance **flexibility**
- Streamline **IT management processes**

# 🐧 What is the Basic Difference Between Rocky and Debian?

- **Rocky Linux** is a **Red Hat–based distribution** designed for enterprise servers.  
  It focuses on **stability**, **long-term support**, and **compatibility with RHEL**.  
  It uses **RPM packages** and the **dnf** package manager.

- **Debian** is an **independent distribution** known for being **universal**, **free**, and **community-driven**.  
  It uses **DEB packages** and the **apt** package manager.  
  Debian is often used for **desktops**, **servers**, and **development**.

# What is AppArmor, and what's the difference between apt and apptitude?


<div align="center">
  <img src="https://raw.githubusercontent.com/Frontendab/Born2beRoot/refs/heads/main/attachment/apt_aptitude.png" width="75%" height="75%" alt="What's the difference between apt and apptitude?" />
  <p><sub><em>What's the difference between apt and apptitude?</em></sub></p>
</div>
