# 🧩 What is Virtualization?

Virtualization is a technology that allows you to create virtual versions of computer resources such as servers, operating systems, storage devices, or networks all running on a single physical machine.

In simple terms, it lets one physical computer act like many separate computers.

# 💻 What is a Virtual Machine?

A **Virtual Machine (VM)** is a software-based computer that runs **inside a physical computer**. It behaves like a real computer, with its own **operating system, applications, and resources**, but it shares the hardware of the host machine.

VMs are created using **virtualization software** (like VirtualBox, VMware, or KVM) and allow you to:

* Run multiple operating systems on a single physical machine
* Test and develop software in isolated environments
* Save resources by sharing CPU, memory, and storage efficiently

> Example: If your physical machine runs Linux, you can create a VM that runs Windows or another Linux version, without affecting the host system.

```mermaid
flowchart TD
    subgraph Physical_Host["Computer / Hardware"]
        A[CPU]
        B[RAM]
        C[Storage]
        D[Network]
    end

    subgraph Hypervisor["Hypervisor"]
        E[Manages Hardware Resources]
        E --> F["VM 1 (OS + Apps)"]
        E --> G["VM 2 (OS + Apps)"]
        E --> H["VM 3 (OS + Apps)"]
    end

    A --> E
    B --> E
    C --> E
    D --> E
```

### Explanation of Diagram:
* The Physical Host is your real computer with CPU, RAM, storage, and network.
* The Hypervisor creates and manages multiple Virtual Machines (VMs).
* Each VM has its own OS and applications but shares the hardware resources through the hypervisor.
* VMs act like independent computers, even though they’re all running on one physical machine.

# ⚙️ How a Virtual Machine (VM) Works?

A **Virtual Machine (VM)** is a software-based computer that behaves like a real computer, but runs **inside a physical host machine**. It works by using a **hypervisor**, which is software that manages the physical hardware and allocates resources (CPU, memory, storage, network) to the VMs.

#### Step-by-Step Process:

1. **Hypervisor Installation:**

   * Type 1 (bare-metal): Hypervisor runs directly on the hardware.
   * Type 2 (hosted): Hypervisor runs on top of a host OS.

2. **VM Creation:**

   * Each VM gets **virtual hardware**: CPU, RAM, storage, and network adapters.

3. **OS Installation:**

   * You install an operating system inside the VM, just like on a physical computer.

4. **Resource Management:**

   * The hypervisor allocates physical resources to the VMs and ensures isolation between them.

5. **Execution:**

   * The VM runs applications and processes in its virtual environment without affecting the host or other VMs.

> **Key Idea:** The VM **acts like a real computer**, but the physical resources are shared and controlled by the hypervisor.

```mermaid
flowchart TD
    subgraph Physical Host
        A[CPU] 
        B[RAM] 
        C[Storage] 
        D[Network]
    end

    subgraph Type2["Type 2 Hypervisor (Hosted)"]
        I[Host OS] 
        I --> J[Hypervisor]
        J --> K["VM 1 (OS + Apps)"]
        J --> L["VM 2 (OS + Apps)"]
    end

    subgraph Type1["Type 1 Hypervisor (BM)"]
        E[Hypervisor] 
        E --> F["VM 1 (OS + Apps)"]
        E --> G["VM 2 (OS + Apps)"]
        E --> H["VM 3 (OS + Apps)"]
    end

    A --> E
    B --> E
    C --> E
    D --> E

    A --> I
    B --> I
    C --> I
    D --> I
```

**Explanation of Diagram:**

* **Type 1:** Hypervisor (Bare-Metal) sits directly on the physical hardware; VMs run on top of it.
* **Type 2:** Hypervisor (Hosted) sits on the host OS; VMs run on top of the hypervisor.
* Physical resources (CPU, RAM, Storage, Network) are shared by the VMs through the hypervisor.

# 🎯 Purpose of Virtual Machines (VMs)

A **Virtual Machine (VM)** is created to provide a **flexible, isolated, and efficient computing environment**. Its main purposes are:

1. **Resource Optimization:**

   * Run multiple VMs on a single physical machine to make better use of CPU, RAM, and storage.

2. **Isolation and Security:**

   * Each VM is isolated from others, so problems (like crashes or malware) in one VM do **not affect others**.

3. **Testing and Development:**

   * Developers can test different operating systems, software, or configurations **without affecting the main system**.

4. **Simplified Backup and Recovery:**

   * VMs can be **snapshotted** or cloned easily, allowing quick recovery if something goes wrong.

5. **Cross-Platform Compatibility:**

   * Run software designed for one OS (like Windows) on a host with a different OS (like Linux or macOS).

6. **Cost Efficiency:**

   * Fewer physical machines are needed, saving **hardware, energy, and maintenance costs**.

### Purpose of VMs

```mermaid
flowchart TD
    A[Virtual Machine] --> B[Efficient Resource Use]
    A --> C[Isolation & Security]
    A --> D[Testing & Development]
    A --> E[Easy Backup & Recovery]
    A --> F[Cross-Platform Compatibility]
    A --> G[Cost Efficiency]
```

This diagram and explanation make it **clear why VMs are widely used in modern IT, development, and cloud computing**.

# 🐧 What is the Basic Difference Between Rocky and Debian?

| Feature                            | **Rocky Linux**                                          | **Debian**                                                               |
| ---------------------------------- | -------------------------------------------------------- | ------------------------------------------------------------------------ |
| **Type**                           | Enterprise-focused Linux                                 | General-purpose Linux                                                    |
| **Origin**                         | Community-driven fork of RHEL (Red Hat Enterprise Linux) | Independent Linux distribution                                           |
| **Package Management**             | **RPM** packages with **dnf/yum**                        | **DEB** packages with **apt**                                            |
| **Release Model**                  | Stable, enterprise releases (long-term support)          | Stable releases + rolling updates (Debian Stable, Testing, Unstable)     |
| **Target Users**                   | Enterprises, servers, production environments            | General users, servers, desktops, developers                             |
| **Default Init System**            | **systemd**                                              | **systemd** (since Debian 8, previously SysVinit)                        |
| **Community / Commercial Support** | Community-driven, closely compatible with RHEL           | Large community support; used as base for Ubuntu and other distributions |
| **Use Case Example**               | Production servers, cloud environments                   | Desktops, servers, development, education                                |

### Summary in Simple Terms

* **Rocky Linux** = Enterprise-focused, RHEL-compatible, stable for production servers.
* **Debian** = Versatile, stable, widely used for servers and desktops, base for many other distributions.

# What is AppArmor, what's the difference between apt and apptitude?

### What is AppArmor?

**AppArmor** (Application Armor) is a **Linux security module** that helps protect your system by **restricting what applications can do**.

* It works by **enforcing security profiles** for each application.
* Profiles define which files, directories, and capabilities an application can access.
* If an application tries to do something outside its profile, AppArmor **blocks it**, helping prevent damage from bugs or attacks.

**Key Points:**

* Mandatory access control (MAC) system
* Easier to configure than some alternatives (like SELinux)
* Protects against malicious or misbehaving applications

### Difference Between `apt` and `aptitude`

Both `apt` and `aptitude` are **package management tools** used in Debian-based systems, but they have differences:

| Feature                   | **apt**                                                                     | **aptitude**                                                                           |
| ------------------------- | --------------------------------------------------------------------------- | -------------------------------------------------------------------------------------- |
| **Type**                  | Command-line tool for package management                                    | Command-line tool with optional text-based GUI                                         |
| **User Interface**        | CLI only                                                                    | CLI + interactive interface (`aptitude`)                                               |
| **Dependency Resolution** | Resolves dependencies automatically, sometimes asks for manual confirmation | More advanced dependency resolver; can suggest multiple solutions when conflicts occur |
| **Commands**              | `apt install package`, `apt remove package`, `apt update`                   | `aptitude install package`, `aptitude remove package`, `aptitude update`               |
| **Use Case**              | Quick, simple package management                                            | Complex dependency problems, easier package browsing and conflict resolution           |

**In short:**

* `apt` = modern, simple, fast CLI tool for most use cases.
* `aptitude` = advanced tool for handling tricky dependency issues and browsing packages interactively.

# What are partitions, what's their purpose and how to set them up
### What Are Partitions?

A **partition** is a **divided section of a physical storage device** (like a hard disk or SSD) that the operating system treats as a separate “logical” disk.

* A single disk can have **multiple partitions**.
* Each partition can have its own **file system** (ext4, NTFS, FAT32, etc.).
* Partitions help organize data and separate the operating system from user data.

### Purpose of Partitions

Partitions are used to:

1. **Separate System and User Data:**

   * For example, one partition for the OS (`/`) and another for user files (`/home`).

2. **Support Multiple Operating Systems:**

   * Each OS can be installed on a separate partition.

3. **Improve Performance:**

   * Disk operations can be optimized when data is organized into partitions.

4. **Enhance Security and Stability:**

   * If one partition fills up or crashes, other partitions remain unaffected.

5. **Enable Swap Space:**

   * A dedicated swap partition acts as virtual memory when RAM is full.

### How to Set Up Partitions

Partitions can be created during OS installation or on an existing disk using tools like **fdisk, gdisk, parted, or GParted**.

**Steps using `fdisk` (Linux CLI example):**

1. **List Disks:**

   ```bash
   sudo fdisk -l
   ```

2. **Select Disk to Partition:**

   ```bash
   sudo fdisk /dev/sdX
   ```

3. **Create a New Partition:**

   * Type `n` for a new partition.
   * Choose partition type (primary or extended).
   * Set start and end sectors (or accept defaults).

4. **Write Changes:**

   * Type `w` to save changes to the disk.

5. **Format Partition:**

   ```bash
   sudo mkfs.ext4 /dev/sdX1
   ```

6. **Mount Partition:**

   ```bash
   sudo mount /dev/sdX1 /mnt
   ```

Add to `/etc/fstab` to mount automatically at boot.

```mermaid
flowchart TD
    A[Physical Disk] --> B["Partition 1: OS (/)"]
    A --> C["Partition 2: Home (/home)"]
    A --> D[Partition 3: Swap]
    A --> E[Partition 4: Data]
```

**Explanation:**

* One disk can have multiple partitions.
* Each partition can have a separate purpose (OS, user data, swap, backup).
