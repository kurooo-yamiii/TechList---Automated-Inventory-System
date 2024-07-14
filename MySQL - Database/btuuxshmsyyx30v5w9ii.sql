-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: bim0kocn6y1cl68dqubs-mysql.services.clever-cloud.com
-- Generation Time: Jun 06, 2023 at 02:48 PM
-- Server version: 8.0.22-13
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bim0kocn6y1cl68dqubs`
--

-- --------------------------------------------------------

--
-- Table structure for table `help`
--

CREATE TABLE `help` (
  `Num` int NOT NULL,
  `Problem` text NOT NULL,
  `Solution` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `help`
--

INSERT INTO `help` (`Num`, `Problem`, `Solution`) VALUES
(1, 'Uneven Behaviour Of Mouse Pointer', 'This issue can be easily fixed by buying a mousepad and cleaning the mouse’s sensor. You can use a soft brush or a clean microfibre cloth to clean the sensor.'),
(2, 'Slow Or Fast Movement Of Cursor', 'Go to the control panel, click on the mouse option, and navigate to the pointers option tab, you can easily set the speed of your cursor.'),
(3, 'Freezing Of Mouse Cursor', 'Wait for some time and refresh your PC by pressing the Fn+f5 keys together. You can try clearing all the programs running in the background and restart the PC.'),
(4, 'Faulty Mouse Batteries', 'This issue is encountered in wireless mice as they run on batteries. If you bought a new mouse and the batteries are OK, ensure a neat and clean connection of the batteries.'),
(5, 'Mouse Double-Click Issue', 'Same as you adjust the cursor speed, you can also set up the double-click feature of your mouse. Go to the control panel and click on the mouse. Navigate to the buttons tab.'),
(6, 'The Keyboard Becomes Unresponsive', 'Start with the basics: If you have a wired keyboard, check that your connection to the computer is stable and in place. Unplug it and plug it back in again if necessary. For wireless keyboards, check that they still have battery life/new batteries and plug them into a source of power to see if that addresses the issue.'),
(7, 'The Keyboard Turns on But Won’t Function at All', 'It’s time to head to your keyboard drivers. Search for Device Manager and open its window. Find and expand the Keyboards section to see your current drivers. Right-click to uninstall the drivers, then reboot your computer. '),
(8, 'Specific Keys Stop Working', 'Start by looking for any basic reasons why a key may not be working. For example, if you have a numeric keypad, then you probably have a Number Lock key that can turn it off. If that Lock key was accidentally pressed, it would explain why certain number keys aren’t working.'),
(9, 'Keys Keep Jamming While Typing', 'Jamming keys are a primary sign that your keyboard is dirty and needs to be cleaned. '),
(10, 'Each Key Press Causes Repeats', 'If the key itself feels stuck, then it’s usually an issue of grime or dirt. Unplug the keyboard, and carefully pop the key off. Use a cloth with a small amount of rubbing alcohol or other solvent to wipe the key and the surrounding area.'),
(11, 'The Keyboard Has the Wrong Character Output', 'Fortunately, you can quickly change the layout to one that matches your keyboard. Search for the Windows Region & Language section. In this new window, select your language, and select Options to see how that language is supported. In the Keyboard section, make sure that only your particular keyboard layout is supported.'),
(12, 'Key Presses Respond Too Slowly', 'Keyboard settings, including third-party keyboard software, include options to “filter” keys or adjust keyboard repeat rates to slower levels. Disable any filter options, and experiment with similar settings to see if this helps get the response function where you want it.'),
(13, 'Keyboard Shortcuts Aren’t Working', 'Check out our article on useful shortcuts to make sure you’re using the right shortcut. You should also check keyboard settings: Windows has an option for “sticky” keys that require pressing one key at a time to activate the shortcut. If this was accidentally enabled, it could be causing your problem.'),
(14, 'Monitor Stuttering or Flickering', 'Tighten down the cable on both the monitor and the computer end (making sure to completely tighten any retention screws, if your cable has them) or simply replace the cable.'),
(15, 'Monitor Shows Vertical Lines', 'Try your monitor on another computer or laptop to see if the problem persists; if it does, you’re probably looking at a replacement, since the error is almost certainly in the LCD panel (the most expensive component of the monitor)'),
(16, 'Monitor Dead or Stuck Pixels', 'There are various techniques for this, ranging from physically “massaging” the screen panel itself to running programs that rapidly cycle a portion of the screen through the color spectrum. '),
(17, 'Monitor Cracks, Spots, and Blotches', 'You could try to replace the LCD panel itself, but since the replacement part will be almost as expensive as a new monitor anyway, you might as well start shopping.'),
(18, 'Monitor Buzzing', 'Buzzing can occur due to problems in power regulation to one or more bulbs. Try adjusting the brightness of your screen up or down to see if the noise dissipates; of course, this can be a less than optimal solution if you need your screen brightness at a specific setting.'),
(19, 'Monitor Incorrect Resolution', 'It’s probable that either the software component (the graphics driver) or the graphics card itself is where the problem is located. Updating the driver usually fixes this problem, though a new graphics card might be in order.'),
(20, 'Monitor Random Shutoffs', 'Carefully check the casing of the monitor itself or the power adapter; if either is too hot to touch for more than a few seconds, they need to be replaced.'),
(21, 'Monitor Screen Doesn’t Display Anything.', 'In a situation where it seems that the screen is on but displays no image, the failure could be the power supply, the motherboard or the inverter (module that supplies current to the backlight).'),
(22, 'Monitor Flashing Indicator Light', 'When it flashes, one knows what’s the cause of a malfunction (a technician uses this information to get to know how to approach and deal with the problem). The problem may be a fault in the charger, motherboard or inverter.'),
(23, 'Monitor Image Appears and then Disappears', 'If the monitor displays an image for a second or so and then disappears, the reason might be a problem with the power supply, the inverter or with one of the lamps or leds'),
(24, 'Monitor Screen is Dead', 'If the screen doesn’t respond at all, the problem can lay in a power supply or the motherboard '),
(25, 'Monitor Display Picture Without Lighting', 'External light (like if you were pointing on the screen with the flashlight) the backlight doesn’t work and  there may be a problem with the inverter or the backlight bulbs or LEDs.'),
(26, 'Monitor Dim Backlight', 'The picture is displayed but not lighted enough (assuming the settings of the screen brightness are set to maximum). This problem can be generally caused by weak bulbs.'),
(27, 'Monitor Screen Turns Off', 'The screen is working for some time and then  suddenly turns off. This is usually a power supply problem.'),
(28, 'Monitor White Screen', 'The screen is working for some time and then  suddenly turns off. This is usually a power supply problem.'),
(29, 'Monitor Broken Screen', 'If the screen is physically broken or damaged we can not repair it but sometimes we can replace it.'),
(30, 'Monitor Dead or Bright Pixel ', 'You can troubleshoot a stuck pixel issue by yourself by physically massaging the screen panel. But, for a dead pixel, you can’t fix it yourself because it is the screen panel’s physical malfunction. Warranty replacement is the only option. '),
(31, 'Monitor Stretched, Light or Dark Screen ', 'You’ve to go to settings and restore the default settings. There are multiple options, so you can set a screen in any way. '),
(32, 'Monitor Black or Blank Display', 'To hard reset, your system shuts down and disconnects all connected devices. Before repairing the motherboard, back up all the data on another drive so that you can restore it easily in the event of failure or data loss.'),
(33, 'Monitor Blurred Screen', 'Any issue either in the graphic card or the graphic driver could start showing the incorrect resolution on the screen. Using a new graphics card or updating the driver is how you can try to fix the issue. If it doesn’t work, the cause may be an internal electronics issue.'),
(34, 'Microphone Tweak Volume Settings', 'To identify the root cause of the microphone issue, first, check the volume settings on the device. Check if you have lowered the key tones in the settings of the device. Check if the device is on mute or if DND settings are turned on. '),
(35, 'Microphone Check Headset Connections', 'To make sure you are facing an issue with the microphone, check the headset connections. Check if the issue occurred due to interference from the external device. Make sure the headset is unmuted, and wires are connected tightly to the device.'),
(36, 'Microphone Check Apps Settings', 'Another thing you need to cross-check is the app settings that you are using. See for the issue in case it is happening only with a particular software or application? The applications and programs on your device have their unique settings. '),
(37, 'Microphone Check Microphone Output', 'Your device may have multiple options available to access the sound input. Check if you are using the microphone that you mean to use. Scroll through the default settings of the device and change them accordingly.'),
(38, 'Microphone Reboot Your Device', 'After cross-checking possible techniques, try to reboot the device in safe mode. Sometimes the system catches a glitch that can get fixed by restarting the computer.'),
(39, 'Microphone Clean the Microphone', 'One more reason that may result in sound interference is a contaminated microphone. Clean your microphone to see if it is covered with carbon or external dust particles.'),
(40, 'Microphone Disconnect Accessories', 'Detach all the accessories attached to the device as it can also be the reason to create microphone issues for you.'),
(41, 'Microphone Check Bluetooth Connections', 'To figure out the no sound issue on your device, make sure that it is not directed to a Bluetooth device'),
(42, 'Microphone Verify Audio Recording', 'You can also check the sound issue by recording something with your device. If the device can record the audio in a video clip, it means the problem is with the device setting.'),
(43, 'Microphone Check Audio Driver', 'Check your audio driver settings and updates. If you have an outdated audio driver, that may result in sound issues on the device. '),
(44, 'Microphone Check Physical Damage', 'You never know if your microphone got damaged the last time your device slipped out of your hands. Examine the device to ensure that your microphone is not broken. '),
(45, 'Microphone Inspect the Wires & Cords', 'Follow the wires from the amplifier to where they interface with the motherboard, really focusing on where they go through the pivot. '),
(46, 'Computer Wont Turn On', 'If your computer does have power, you should check to see if your monitor is working  it could be that the PC is powered, but the monitor isnt connected.'),
(47, 'Slow Internet Connection', 'If that didn’t work, you might have a weak Wi-Fi signal. You can try moving or repositioning your router. Make sure that you close any background software that is running as well. '),
(48, 'Computer Slowing Down', 'First, try to find the programs that are using too much of your computer’s memory and processing power. Use the Task Manager to find out which programs are using a lot of memory, and then close those that aren’t in use. '),
(49, 'Hard Drive Is Noisy', 'Most of the time, the hard drive is silent with a few sounds from time to time. However, if you start hearing noises all the time, especially clicking, squealing, or grinding, you may have a hard drive that is failing. '),
(50, 'Computer Fan Isnt Working', 'It is common for fans to stop running when the computer is cool – but if your fans are not running whilst it has been on for a while and is hot, you may have an issue with your cooling system. '),
(51, 'Computer Is Freezing', 'However, your computer will slow down long before this happens, and you should get it assessed when you first notice a decrease in performance – before it completely breaks down. '),
(52, 'Hard Drive Not Found', 'Perform a hard reset, check for physical damage'),
(53, 'Hard Drive Volume is Dirty', 'Check system error, reconnect the external device'),
(54, 'Hard Drive Cant Boot the System', 'Restore, defaults bios settings, perform an advanced startup'),
(55, 'Hard Drive Error', 'Perform Hard Drive Diagnostic Test'),
(56, 'Hard Drive Error Number 0142', 'Restart system in safe mode, give your system a fresh start'),
(57, 'Hard Drive Data Loss', 'Download a certain application to recover the data loss in the hard drive'),
(58, 'Hard Drive Corrupted Files', 'Close every program or application open before PC Shutdown'),
(59, 'Hard Drive Parameters is Incorrect', 'Check the USB Port and Drive hence if doesnt work format the drive'),
(60, 'The Request Failed Due To Fatal Device Hardware Error', 'Reconnect the disk, reset the driver then update the driver'),
(61, 'Hard Drive Disk Full', 'Deleting unwanted content, uninstall unimportant applications and defragment the disk'),
(62, 'Hard Drive Data Inaccessibility', 'Create a bootable recovery media with the use of different recovery software'),
(63, 'Hard Drive Malware Encounter', 'Kepp the operating system updated and install frequent update of antivirus software program'),
(64, 'Hard Drive Manafacturing Fault\n', 'Be careful when purchasing a new hard disk check the cases and critique it well'),
(65, 'Hard Drive Heat Increasing\n', 'CPU Fan is installed properly and providing sufficient cooling to the hard disk also you may shutdown the PC for a while and let it cool down');

-- --------------------------------------------------------

--
-- Table structure for table `inventorylist`
--

CREATE TABLE `inventorylist` (
  `ItemID` int NOT NULL,
  `EquipmentName` text NOT NULL,
  `Brand` text NOT NULL,
  `Date` text NOT NULL,
  `LastUpdate` text NOT NULL,
  `Quantity` text NOT NULL,
  `Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `inventorylist`
--

INSERT INTO `inventorylist` (`ItemID`, `EquipmentName`, `Brand`, `Date`, `LastUpdate`, `Quantity`, `Status`) VALUES
(1, 'Hard Drive', 'Seacode Baraccoda', 'Feb 27, 2023 09:49:36 PM', 'Feb 27, 2023 09:49:36 PM', '1', 'Working'),
(1, 'CPU', 'Intel I3', 'Feb 27, 2023 09:51:08 PM', 'Feb 27, 2023 09:51:08 PM', '1', 'Working'),
(1, 'Monitor', 'Acer', 'Feb 27, 2023 09:51:41 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(1, 'Mouse', 'TWolf', 'Feb 27, 2023 09:51:57 PM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(1, 'Keyboard', 'TWolf', 'Feb 27, 2023 09:52:20 PM', 'Feb 27, 2023 09:52:20 PM', '1', 'Working'),
(1, 'RAM', 'Kingston', 'Feb 27, 2023 09:52:35 PM', 'Feb 27, 2023 09:52:35 PM', '1', 'Working'),
(2, 'Hard Drive', 'Seacode Baraccuda', 'Feb 27, 2023 09:54:16 PM', 'Jun 03, 2023 05:37:40 PM', '1', 'Working'),
(2, 'CPU', 'Matsushita', 'Feb 27, 2023 09:54:42 PM', 'Jun 03, 2023 09:22:51 AM', '1', 'Working'),
(2, 'Monitor', 'Matsushita', 'Feb 27, 2023 09:55:50 PM', 'Jun 03, 2023 09:23:00 AM', '1', 'Working'),
(2, 'Mouse', 'Matsushita', 'Feb 27, 2023 09:56:04 PM', 'Jun 03, 2023 09:23:08 AM', '1', 'Working'),
(2, 'Keyboard', 'Matsushita', 'Feb 27, 2023 09:56:24 PM', 'Jun 03, 2023 09:23:16 AM', '1', 'Working'),
(2, 'RAM', 'Matsushita', 'Feb 27, 2023 09:56:38 PM', 'Jun 03, 2023 09:18:34 AM', '1', 'Working'),
(3, 'Monitor', 'Acer', 'Feb 28, 2023 07:27:24 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(3, 'Keyboard', 'Acer', 'Feb 28, 2023 07:28:04 PM', 'Feb 28, 2023 07:28:04 PM', '1', 'Working'),
(3, 'Mouse', 'TWolf', 'Feb 28, 2023 07:28:23 PM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(3, 'CPU', 'Intel I3', 'Feb 28, 2023 07:28:37 PM', 'Feb 28, 2023 07:28:37 PM', '1', 'Working'),
(3, 'RAM', 'Kingston', 'Feb 28, 2023 07:28:55 PM', 'Feb 28, 2023 07:28:55 PM', '1', 'Working'),
(4, 'Hard Drive', 'Seagate Baraccuda', 'Feb 28, 2023 07:29:53 PM', 'Feb 28, 2023 07:29:53 PM', '1', 'Working'),
(4, 'CPU', 'Intel I3', 'Feb 28, 2023 07:30:22 PM', 'Feb 28, 2023 07:30:22 PM', '1', 'Working'),
(4, 'Monitor', 'Acer', 'Feb 28, 2023 07:30:49 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(4, 'Keyboard', 'Acer', 'Feb 28, 2023 07:31:03 PM', 'Feb 28, 2023 07:31:03 PM', '1', 'Working'),
(4, 'Mouse', 'TWolf', 'Feb 28, 2023 07:31:53 PM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(4, 'RAM', 'Kingston', 'Feb 28, 2023 07:32:07 PM', 'Feb 28, 2023 07:32:07 PM', '1', 'Working'),
(5, 'Hard Drive', 'Seagate Baraccuda', 'Feb 28, 2023 07:33:26 PM', 'Feb 28, 2023 07:33:26 PM', '1', 'Working'),
(5, 'CPU', 'Intel I3', 'Feb 28, 2023 07:33:44 PM', 'Feb 28, 2023 07:33:44 PM', '1', 'Working'),
(5, 'Monitor', 'Acer', 'Feb 28, 2023 07:34:01 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(5, 'Mouse', 'TWolf', 'Feb 28, 2023 07:34:36 PM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(5, 'Keyboard', 'TWolf', 'Feb 28, 2023 07:34:52 PM', 'Feb 28, 2023 07:34:52 PM', '1', 'Working'),
(5, 'RAM', 'Kingston', 'Feb 28, 2023 07:35:07 PM', 'Feb 28, 2023 07:35:07 PM', '1', 'Working'),
(6, 'Hard Drive', 'Seagate Baraccuda', 'Feb 28, 2023 07:36:12 PM', 'Feb 28, 2023 07:36:12 PM', '1', 'Working'),
(6, 'CPU', 'Intel I3', 'Feb 28, 2023 07:36:32 PM', 'Feb 28, 2023 07:36:32 PM', '1', 'Working'),
(6, 'Monitor', 'Acer', 'Feb 28, 2023 07:37:01 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(6, 'Mouse', 'TWolf', 'Feb 28, 2023 07:37:14 PM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(6, 'Keyboard', 'TWolf', 'Feb 28, 2023 07:37:24 PM', 'Feb 28, 2023 07:37:24 PM', '1', 'Working'),
(6, 'RAM', 'Kingston', 'Feb 28, 2023 07:37:44 PM', 'Feb 28, 2023 07:37:44 PM', '1', 'Working'),
(7, 'Hard Drive', 'Seagate Baraccuda', 'Feb 28, 2023 07:39:11 PM', 'Feb 28, 2023 07:39:11 PM', '1', 'Working'),
(7, 'CPU', 'Intel I3', 'Feb 28, 2023 07:39:40 PM', 'Feb 28, 2023 07:39:40 PM', '1', 'Working'),
(7, 'Monitor', 'Acer', 'Feb 28, 2023 07:40:29 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(7, 'Mouse', 'TWolf', 'Feb 28, 2023 07:40:47 PM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(7, 'Keyboard', 'TWolf', 'Feb 28, 2023 07:40:59 PM', 'Feb 28, 2023 07:40:59 PM', '1', 'Working'),
(7, 'RAM', 'Kingston', 'Feb 28, 2023 07:41:17 PM', 'Feb 28, 2023 07:41:17 PM', '1', 'Working'),
(8, 'Hard Drive', 'Seagate Baraccuda', 'Feb 28, 2023 07:41:58 PM', 'Feb 28, 2023 07:41:58 PM', '1', 'Working'),
(8, 'CPU', 'Intel I3', 'Feb 28, 2023 07:42:20 PM', 'Feb 28, 2023 07:42:20 PM', '1', 'Working'),
(8, 'Monitor', 'Acer', 'Feb 28, 2023 07:42:45 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(8, 'Mouse', 'TWolf', 'Feb 28, 2023 07:43:08 PM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(8, 'Keyboard', 'TWolf', 'Feb 28, 2023 07:43:21 PM', 'Feb 28, 2023 07:43:21 PM', '1', 'Working'),
(8, 'RAM', 'Kingston', 'Feb 28, 2023 07:43:37 PM', 'Feb 28, 2023 07:43:37 PM', '1', 'Working'),
(9, 'Hard Drive', 'Seagate Baraccuda', 'Feb 28, 2023 07:44:31 PM', 'Feb 28, 2023 07:44:31 PM', '1', 'Working'),
(9, 'CPU', 'Intel I3', 'Feb 28, 2023 07:45:08 PM', 'Feb 28, 2023 07:45:08 PM', '1', 'Working'),
(9, 'Monitor ', 'Xitrix', 'Feb 28, 2023 07:45:23 PM', 'Feb 28, 2023 07:45:23 PM', '1', 'Working'),
(9, 'Mouse', 'TWolf', 'Feb 28, 2023 07:46:23 PM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(9, 'Keyboard', 'Acer', 'Feb 28, 2023 07:46:41 PM', 'Feb 28, 2023 07:46:41 PM', '1', 'Working'),
(9, 'RAM', 'Kingston', 'Feb 28, 2023 07:46:57 PM', 'Feb 28, 2023 07:46:57 PM', '1', 'Working'),
(10, 'Hard Drive', 'Seagate Baraccuda', 'Feb 28, 2023 07:48:01 PM', 'Feb 28, 2023 07:48:01 PM', '1', 'Working'),
(10, 'CPU', 'Intel I3', 'Feb 28, 2023 07:48:24 PM', 'Feb 28, 2023 07:48:24 PM', '1', 'Working'),
(10, 'Monitor', 'Acer', 'Feb 28, 2023 07:48:46 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(10, 'Keyboard', 'TWolf', 'Feb 28, 2023 07:49:16 PM', 'Feb 28, 2023 07:49:16 PM', '1', 'Working'),
(10, 'Mouse', 'TWolf', 'Feb 28, 2023 07:49:29 PM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(10, 'RAM', 'Kingston', 'Feb 28, 2023 07:49:41 PM', 'Feb 28, 2023 07:49:41 PM', '1', 'Working'),
(11, 'Hard Drive', 'Seagate Baraccuda', 'Feb 28, 2023 07:52:39 PM', 'Feb 28, 2023 07:52:39 PM', '1', 'Working'),
(11, 'CPU', 'Intel I3', 'Feb 28, 2023 07:52:58 PM', 'Feb 28, 2023 07:52:58 PM', '1', 'Working'),
(11, 'Monitor', 'Acer', 'Feb 28, 2023 07:53:16 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(11, 'Keyboard', 'Acer', 'Feb 28, 2023 07:53:41 PM', 'Feb 28, 2023 07:53:41 PM', '1', 'Working'),
(11, 'Mouse', 'TWolf', 'Feb 28, 2023 07:53:54 PM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(11, 'RAM', 'Kingston', 'Feb 28, 2023 07:54:04 PM', 'Feb 28, 2023 07:54:04 PM', '1', 'Working'),
(12, 'Hard Drive', 'Seagate Baraccuda', 'Feb 28, 2023 08:04:06 PM', 'Feb 28, 2023 08:04:06 PM', '1', 'Working'),
(12, 'CPU', 'Intel I3', 'Feb 28, 2023 08:05:54 PM', 'Feb 28, 2023 08:05:54 PM', '1', 'Working'),
(12, 'Monitor', 'Acer', 'Feb 28, 2023 08:06:13 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(12, 'Keyboard', 'TWolf', 'Feb 28, 2023 08:06:26 PM', 'Feb 28, 2023 08:06:26 PM', '1', 'Working'),
(12, 'Mouse', 'TWolf', 'Feb 28, 2023 08:06:42 PM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(12, 'RAM', 'Kingston', 'Feb 28, 2023 08:06:56 PM', 'Feb 28, 2023 08:06:56 PM', '1', 'Working'),
(13, 'Hard Drive', 'Seagate Baraccuda', 'Feb 28, 2023 08:09:13 PM', 'Feb 28, 2023 08:09:13 PM', '1', 'Working'),
(13, 'CPU', 'Intel I3', 'Feb 28, 2023 08:09:37 PM', 'Feb 28, 2023 08:09:37 PM', '1', 'Working'),
(13, 'Monitor', 'Acer', 'Feb 28, 2023 08:09:52 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(13, 'Mouse', 'TWolf', 'Feb 28, 2023 08:10:22 PM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(13, 'Keyboard', 'TWolf', 'Feb 28, 2023 08:10:33 PM', 'Feb 28, 2023 08:10:33 PM', '1', 'Working'),
(13, 'RAM', 'Kingston', 'Feb 28, 2023 08:10:46 PM', 'Feb 28, 2023 08:10:46 PM', '1', 'Working'),
(14, 'Hard Drive', 'Seagate Baraccuda', 'Feb 28, 2023 08:11:23 PM', 'Feb 28, 2023 08:11:23 PM', '1', 'Working'),
(14, 'CPU', 'Intel I3', 'Feb 28, 2023 08:11:44 PM', 'Feb 28, 2023 08:11:44 PM', '1', 'Working'),
(14, 'Monitor', 'Acer', 'Feb 28, 2023 08:11:57 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(14, 'Mouse', 'TWolf', 'Feb 28, 2023 08:12:20 PM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(14, 'Keyboard', 'TWolf', 'Feb 28, 2023 08:12:32 PM', 'Feb 28, 2023 08:12:32 PM', '1', 'Working'),
(14, 'RAM', 'Kingston', 'Feb 28, 2023 08:12:46 PM', 'Feb 28, 2023 08:12:46 PM', '1', 'Working'),
(15, 'Hard Drive', 'Seagate Baraccuda', 'Feb 28, 2023 08:14:34 PM', 'Feb 28, 2023 08:14:34 PM', '1', 'Working'),
(15, 'CPU', 'Intel I3', 'Feb 28, 2023 08:14:58 PM', 'Feb 28, 2023 08:14:58 PM', '1', 'Working'),
(15, 'Monitor', 'Acer', 'Feb 28, 2023 08:15:11 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(15, 'Mouse', 'TWolf', 'Feb 28, 2023 08:15:27 PM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(15, 'Keyboard', 'TWolf', 'Feb 28, 2023 08:15:38 PM', 'Feb 28, 2023 08:15:38 PM', '1', 'Working'),
(15, 'RAM', 'Kingston', 'Feb 28, 2023 08:15:53 PM', 'Feb 28, 2023 08:15:53 PM', '1', 'Working'),
(16, 'Hard Drive', 'Seagate Baraccuda', 'Feb 28, 2023 08:18:21 PM', 'Feb 28, 2023 08:18:21 PM', '1', 'Working'),
(16, 'CPU', 'Intel I3', 'Feb 28, 2023 08:18:37 PM', 'Feb 28, 2023 08:18:37 PM', '1', 'Working'),
(16, 'Monitor', 'Acer', 'Feb 28, 2023 08:22:14 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(16, 'Mouse', 'TWolf', 'Feb 28, 2023 08:22:28 PM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(16, 'Keyboard', 'TWolf', 'Feb 28, 2023 08:22:38 PM', 'Feb 28, 2023 08:22:38 PM', '1', 'Working'),
(16, 'RAM', 'Kingston', 'Feb 28, 2023 08:22:55 PM', 'Feb 28, 2023 08:22:55 PM', '1', 'Working'),
(17, 'Hard Drive', 'Seagate Baraccuda', 'Feb 28, 2023 08:24:17 PM', 'Feb 28, 2023 08:24:17 PM', '1', 'Working'),
(17, 'CPU', 'Intel I3', 'Feb 28, 2023 08:24:33 PM', 'Feb 28, 2023 08:24:33 PM', '1', 'Working'),
(17, 'Monitor', 'Acer', 'Feb 28, 2023 08:24:47 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(17, 'Mouse', 'TWolf', 'Feb 28, 2023 08:25:07 PM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(17, 'Keyboard', 'TWolf', 'Feb 28, 2023 08:25:28 PM', 'Feb 28, 2023 08:25:28 PM', '1', 'Working'),
(17, 'RAM', 'Kingston', 'Feb 28, 2023 08:25:38 PM', 'Feb 28, 2023 08:25:38 PM', '1', 'Working'),
(18, 'Hard Drive', 'Seagate Baraccuda', 'Feb 28, 2023 08:26:16 PM', 'Feb 28, 2023 08:26:16 PM', '1', 'Working'),
(18, 'CPU', 'Intel I3', 'Feb 28, 2023 08:26:32 PM', 'Feb 28, 2023 08:26:32 PM', '1', 'Working'),
(18, 'Monitor', 'Acer', 'Feb 28, 2023 08:27:15 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(18, 'Mouse', 'TWolf', 'Feb 28, 2023 08:27:38 PM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(18, 'Keyboard', 'TWolf', 'Feb 28, 2023 08:27:49 PM', 'Feb 28, 2023 08:27:49 PM', '1', 'Working'),
(18, 'RAM', 'Kingston', 'Feb 28, 2023 08:28:01 PM', 'Feb 28, 2023 08:28:01 PM', '1', 'Working'),
(19, 'Hard Drive', 'Seagate Baraccuda', 'Feb 28, 2023 08:28:39 PM', 'Feb 28, 2023 08:28:39 PM', '1', 'Working'),
(19, 'CPU', 'Intel I3', 'Feb 28, 2023 08:28:59 PM', 'Feb 28, 2023 08:28:59 PM', '1', 'Working'),
(19, 'Monitor', 'Acer', 'Feb 28, 2023 08:29:30 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(19, 'Keyboard', 'Acer', 'Feb 28, 2023 08:29:43 PM', 'Feb 28, 2023 08:29:43 PM', '1', 'Working'),
(19, 'Mouse', 'TWolf', 'Feb 28, 2023 08:30:07 PM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(19, 'RAM', 'Kingston', 'Feb 28, 2023 08:30:26 PM', 'Feb 28, 2023 08:30:26 PM', '1', 'Working'),
(20, 'Hard Drive', 'Seagate Baraccuda', 'Feb 28, 2023 08:30:59 PM', 'Feb 28, 2023 08:30:59 PM', '1', 'Working'),
(20, 'CPU', 'Intel I3', 'Feb 28, 2023 08:31:16 PM', 'Feb 28, 2023 08:31:16 PM', '1', 'Working'),
(20, 'Monitor', 'Acer', 'Feb 28, 2023 08:31:29 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(20, 'Keyboard', 'TWolf', 'Feb 28, 2023 08:32:01 PM', 'Feb 28, 2023 08:32:01 PM', '1', 'Working'),
(20, 'Mouse', 'TWolf', 'Feb 28, 2023 08:32:14 PM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(20, 'RAM', 'Kingston', 'Feb 28, 2023 08:32:24 PM', 'Feb 28, 2023 08:32:24 PM', '1', 'Working'),
(21, 'Hard Drive', 'Seagate Baraccuda', 'Feb 28, 2023 08:33:10 PM', 'Feb 28, 2023 08:33:10 PM', '1', 'Working'),
(21, 'CPU', 'Intel I3', 'Feb 28, 2023 08:33:30 PM', 'Feb 28, 2023 08:33:30 PM', '1', 'Working'),
(21, 'Monitor', 'Acer', 'Feb 28, 2023 08:33:47 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(21, 'Keyboard', 'Acer', 'Feb 28, 2023 08:34:01 PM', 'Feb 28, 2023 08:34:01 PM', '1', 'Working'),
(21, 'Mouse', 'TWolf', 'Feb 28, 2023 08:34:15 PM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(21, 'RAM', 'Kingston', 'Feb 28, 2023 08:34:28 PM', 'Feb 28, 2023 08:34:28 PM', '1', 'Working'),
(22, 'Hard Drive', 'Seagate Baraccuda', 'Feb 28, 2023 08:35:11 PM', 'Feb 28, 2023 08:35:11 PM', '1', 'Working'),
(22, 'CPU', 'Intel I3', 'Feb 28, 2023 08:35:30 PM', 'Feb 28, 2023 08:35:30 PM', '1', 'Working'),
(22, 'Monitor', 'Acer', 'Feb 28, 2023 08:35:43 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(22, 'Keyboard', 'TWolf', 'Feb 28, 2023 08:36:04 PM', 'Feb 28, 2023 08:36:04 PM', '1', 'Working'),
(22, 'Mouse', 'TWolf', 'Feb 28, 2023 08:36:24 PM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(22, 'RAM', 'Kingston', 'Feb 28, 2023 08:36:36 PM', 'Feb 28, 2023 08:36:36 PM', '1', 'Working'),
(23, 'Hard Drive', 'Seagate Baraccuda', 'Feb 28, 2023 08:37:26 PM', 'Feb 28, 2023 08:37:26 PM', '1', 'Working'),
(23, 'CPU', 'Intel I3', 'Feb 28, 2023 08:37:46 PM', 'Feb 28, 2023 08:37:46 PM', '1', 'Working'),
(23, 'Monitor', 'Acer', 'Feb 28, 2023 08:37:59 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(23, 'Keyboard', 'TWolf', 'Feb 28, 2023 08:38:13 PM', 'Feb 28, 2023 08:38:13 PM', '1', 'Working'),
(23, 'Mouse', 'TWolf', 'Feb 28, 2023 08:38:24 PM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(23, 'RAM', 'Kingston', 'Feb 28, 2023 08:38:35 PM', 'Feb 28, 2023 08:38:35 PM', '1', 'Working'),
(24, 'Hard Drive', 'Seagate Baraccuda', 'Feb 28, 2023 08:39:11 PM', 'Feb 28, 2023 08:39:11 PM', '1', 'Working'),
(24, 'CPU', 'Intel I3', 'Feb 28, 2023 08:39:25 PM', 'Feb 28, 2023 08:39:25 PM', '1', 'Working'),
(24, 'Monitor', 'Acer', 'Feb 28, 2023 08:39:43 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(24, 'Mouse', 'TWolf', 'Feb 28, 2023 08:39:55 PM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(24, 'Keyboard', 'TWolf', 'Feb 28, 2023 08:40:07 PM', 'Feb 28, 2023 08:40:07 PM', '1', 'Working'),
(24, 'RAM', 'Kingston', 'Feb 28, 2023 08:40:27 PM', 'Feb 28, 2023 08:40:27 PM', '1', 'Working'),
(25, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 09:53:32 AM', 'Mar 01, 2023 09:53:32 AM', '1', 'Working'),
(25, 'CPU ', 'Intel I3', 'Mar 01, 2023 09:53:50 AM', 'Mar 01, 2023 09:53:50 AM', '1', 'Working'),
(25, 'Monitor', 'Acer', 'Mar 01, 2023 09:55:11 AM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(25, 'Mouse', 'TWolf', 'Mar 01, 2023 09:55:34 AM', 'Mar 01, 2023 09:55:55 AM', '1', 'Working'),
(25, 'Keyboard', 'TWolf', 'Mar 01, 2023 09:56:02 AM', 'Mar 01, 2023 09:56:02 AM', '1', 'Working'),
(25, 'RAM', 'Kingston', 'Mar 01, 2023 09:56:16 AM', 'Mar 01, 2023 09:56:16 AM', '1', 'Working'),
(26, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 09:59:57 AM', 'Mar 01, 2023 09:59:57 AM', '1', 'Working'),
(26, 'CPU', 'Intel I3', 'Mar 01, 2023 10:00:20 AM', 'Mar 01, 2023 10:00:20 AM', '1', 'Working'),
(26, 'Monitor', 'Acer', 'Mar 01, 2023 10:02:04 AM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(26, 'Keyboard', 'TWolf', 'Mar 01, 2023 10:02:28 AM', 'Mar 01, 2023 10:02:28 AM', '1', 'Working'),
(26, 'Mouse', 'TWolf', 'Mar 01, 2023 10:02:44 AM', 'Mar 01, 2023 10:02:44 AM', '1', 'Working'),
(26, 'RAM', 'Kingston', 'Mar 01, 2023 10:03:04 AM', 'Mar 01, 2023 10:03:04 AM', '1', 'Working'),
(27, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 10:03:47 AM', 'Mar 01, 2023 10:03:47 AM', '1', 'Working'),
(27, 'CPU', 'Intel I3', 'Mar 01, 2023 10:04:03 AM', 'Mar 01, 2023 10:04:03 AM', '1', 'Working'),
(27, 'Monitor ', 'Xitrix', 'Mar 01, 2023 10:04:15 AM', 'Mar 01, 2023 10:04:15 AM', '1', 'Working'),
(27, 'Mouse', 'TWolf', 'Mar 01, 2023 10:04:29 AM', 'Mar 01, 2023 10:04:29 AM', '1', 'Working'),
(27, 'Keyboard', 'TWolf', 'Mar 01, 2023 10:04:42 AM', 'Mar 01, 2023 10:04:42 AM', '1', 'Working'),
(27, 'RAM', 'Kingston', 'Mar 01, 2023 10:04:53 AM', 'Mar 01, 2023 10:04:53 AM', '1', 'Working'),
(28, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 10:09:21 AM', 'Mar 01, 2023 10:09:21 AM', '1', 'Working'),
(28, 'CPU', 'Intel I3', 'Mar 01, 2023 10:10:02 AM', 'Mar 01, 2023 10:10:02 AM', '1', 'Working'),
(28, 'Monitor', 'Acer', 'Mar 01, 2023 10:10:14 AM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(28, 'Keyboard', 'Acer', 'Mar 01, 2023 10:10:55 AM', 'Mar 01, 2023 10:10:55 AM', '1', 'Working'),
(28, 'Mouse', 'TWolf', 'Mar 01, 2023 10:11:14 AM', 'Mar 01, 2023 10:11:14 AM', '1', 'Working'),
(28, 'RAM', 'Kingston', 'Mar 01, 2023 10:11:26 AM', 'Mar 01, 2023 10:11:26 AM', '1', 'Working'),
(29, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 10:15:58 AM', 'Mar 01, 2023 10:15:58 AM', '1', 'Working'),
(29, 'CPU', 'Intel I3', 'Mar 01, 2023 10:16:21 AM', 'Mar 01, 2023 10:16:21 AM', '1', 'Working'),
(29, 'Monitor', 'Acer', 'Mar 01, 2023 10:16:37 AM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(29, 'Mouse', 'JCSM', 'Mar 01, 2023 10:16:53 AM', 'Mar 01, 2023 10:16:53 AM', '1', 'Working'),
(29, 'Keyboard', 'Xitrix', 'Mar 01, 2023 10:17:09 AM', 'Mar 01, 2023 10:17:09 AM', '1', 'Working'),
(29, 'RAM', 'Kingston', 'Mar 01, 2023 10:17:26 AM', 'Mar 01, 2023 10:17:26 AM', '1', 'Working'),
(30, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 10:18:10 AM', 'Mar 01, 2023 10:18:10 AM', '1', 'Working'),
(30, 'CPU', 'Intel I3', 'Mar 01, 2023 10:18:24 AM', 'Mar 01, 2023 10:18:24 AM', '1', 'Working'),
(30, 'Monitor', 'Acer', 'Mar 01, 2023 10:18:39 AM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(30, 'Mouse', 'NA', 'Mar 01, 2023 10:19:51 AM', 'Mar 01, 2023 10:19:51 AM', '0', 'Missing'),
(30, 'Keyboard', 'NA', 'Mar 01, 2023 10:20:16 AM', 'Mar 01, 2023 10:20:16 AM', '0', 'Missing'),
(30, 'RAM', 'Kingston', 'Mar 01, 2023 10:20:31 AM', 'Mar 01, 2023 10:20:31 AM', '1', 'Working'),
(31, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 10:21:13 AM', 'Mar 01, 2023 10:21:13 AM', '1', 'Working'),
(31, 'CPU', 'Intel I3', 'Mar 01, 2023 10:21:33 AM', 'Mar 01, 2023 10:21:33 AM', '1', 'Defective'),
(31, 'Monitor', 'Acer', 'Mar 01, 2023 10:22:03 AM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(31, 'Keyboard', 'Xitrix', 'Mar 01, 2023 10:22:16 AM', 'Mar 01, 2023 10:22:16 AM', '1', 'Working'),
(31, 'Mouse', 'TWolf', 'Mar 01, 2023 10:22:36 AM', 'Mar 01, 2023 10:22:36 AM', '1', 'Working'),
(31, 'RAM', 'Kingston', 'Mar 01, 2023 10:22:55 AM', 'Mar 01, 2023 10:22:55 AM', '1', 'Working'),
(32, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 10:24:58 AM', 'Mar 01, 2023 10:24:58 AM', '1', 'Working'),
(32, 'CPU', 'Intel I3', 'Mar 01, 2023 10:25:15 AM', 'Mar 01, 2023 10:25:15 AM', '1', 'Working'),
(32, 'Monitor', 'Acer', 'Mar 01, 2023 10:27:12 AM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(32, 'Mouse', '84Tech', 'Mar 01, 2023 10:27:24 AM', 'Mar 01, 2023 10:27:24 AM', '1', 'Working'),
(32, 'Keyboard', 'Acer', 'Mar 01, 2023 10:27:45 AM', 'Mar 01, 2023 10:27:45 AM', '1', 'Working'),
(32, 'RAM', 'Kingston', 'Mar 01, 2023 10:28:00 AM', 'Mar 01, 2023 10:28:00 AM', '1', 'Working'),
(33, 'CD ROM ', 'Matsushita', 'Mar 01, 2023 10:44:16 AM', 'Mar 01, 2023 10:44:16 AM', '1', 'Working'),
(33, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 10:44:50 AM', 'Mar 01, 2023 10:44:50 AM', '1', 'Working'),
(33, 'CPU', 'Intel I3', 'Mar 01, 2023 10:45:42 AM', 'Mar 01, 2023 10:45:42 AM', '1', 'Working'),
(33, 'Monitor', 'Acer', 'Mar 01, 2023 10:46:13 AM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(33, 'Mouse', 'TWolf', 'Mar 01, 2023 10:46:44 AM', 'Mar 01, 2023 10:46:44 AM', '1', 'Working'),
(33, 'Keyboard', 'Xitrix', 'Mar 01, 2023 10:47:07 AM', 'Mar 01, 2023 10:47:07 AM', '1', 'Working'),
(33, 'RAM', 'Kingston', 'Mar 01, 2023 10:47:34 AM', 'Mar 01, 2023 10:47:34 AM', '1', 'Working'),
(34, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 10:48:41 AM', 'Mar 01, 2023 10:48:41 AM', '1', 'Working'),
(34, 'CPU', 'Intel I3', 'Mar 01, 2023 10:49:10 AM', 'Mar 01, 2023 10:49:10 AM', '1', 'Working'),
(34, 'Monitor', 'Acer', 'Mar 01, 2023 10:49:37 AM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(34, 'Mouse', 'TWolf', 'Mar 01, 2023 10:50:15 AM', 'Mar 01, 2023 10:50:15 AM', '1', 'Working'),
(34, 'Keyboard', 'Xitrix', 'Mar 01, 2023 10:50:30 AM', 'Mar 01, 2023 10:50:30 AM', '1', 'Working'),
(34, 'RAM', 'Kingston', 'Mar 01, 2023 10:51:05 AM', 'Mar 01, 2023 10:51:05 AM', '1', 'Working'),
(35, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 10:52:30 AM', 'Mar 01, 2023 10:52:30 AM', '1', 'Working'),
(35, 'CPU', 'Intel I3', 'Mar 01, 2023 10:53:09 AM', 'Mar 01, 2023 10:53:09 AM', '1', 'Working'),
(35, 'Monitor', 'Acer', 'Mar 01, 2023 10:53:28 AM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(35, 'Mouse', 'Xitrix', 'Mar 01, 2023 10:53:59 AM', 'Mar 01, 2023 10:53:59 AM', '1', 'Working'),
(35, 'Keyboard', 'Xitrix', 'Mar 01, 2023 10:54:18 AM', 'Mar 01, 2023 10:54:18 AM', '1', 'Working'),
(35, 'RAM', 'Kingston', 'Mar 01, 2023 10:54:38 AM', 'Mar 01, 2023 10:54:38 AM', '1', 'Working'),
(36, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 10:55:45 AM', 'Mar 01, 2023 10:55:45 AM', '1', 'Working'),
(36, 'CPU', 'Intel I3', 'Mar 01, 2023 10:56:16 AM', 'Mar 01, 2023 10:56:16 AM', '1', 'Working'),
(36, 'Monitor', 'Acer', 'Mar 01, 2023 10:56:43 AM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(36, 'Mouse', 'Genius', 'Mar 01, 2023 10:57:16 AM', 'Mar 01, 2023 10:57:16 AM', '1', 'Working'),
(36, 'Keyboard', 'Acer', 'Mar 01, 2023 10:57:40 AM', 'Mar 01, 2023 10:57:40 AM', '1', 'Working'),
(36, 'RAM', 'Kingston', 'Mar 01, 2023 10:58:01 AM', 'Mar 01, 2023 10:58:01 AM', '1', 'Working'),
(37, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 10:59:17 AM', 'Mar 01, 2023 10:59:17 AM', '1', 'Working'),
(37, 'CPU', 'Intel I3', 'Mar 01, 2023 11:00:07 AM', 'Mar 01, 2023 11:00:07 AM', '1', 'Working'),
(37, 'Monitor', 'Acer', 'Mar 01, 2023 11:00:33 AM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(37, 'Mouse', 'Genius', 'Mar 01, 2023 11:00:58 AM', 'Mar 01, 2023 11:00:58 AM', '1', 'Working'),
(37, 'Keyboard', 'Xitrix', 'Mar 01, 2023 11:01:34 AM', 'Mar 01, 2023 11:01:34 AM', '1', 'Working'),
(37, 'RAM', 'Kingston', 'Mar 01, 2023 12:30:50 PM', 'Mar 01, 2023 12:30:50 PM', '1', 'Working'),
(38, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 12:32:21 PM', 'Mar 01, 2023 12:32:21 PM', '1', 'Working'),
(38, 'CPU', 'Intel I3', 'Mar 01, 2023 12:32:44 PM', 'Mar 01, 2023 12:32:44 PM', '1', 'Working'),
(38, 'Monitor', 'Acer', 'Mar 01, 2023 12:33:00 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(38, 'Mouse', 'TWolf', 'Mar 01, 2023 12:33:19 PM', 'Mar 01, 2023 12:33:19 PM', '1', 'Working'),
(38, 'Keyboard', 'TWolf', 'Mar 01, 2023 12:33:43 PM', 'Mar 01, 2023 12:33:43 PM', '1', 'Working'),
(38, 'RAM', 'Kingston', 'Mar 01, 2023 12:34:22 PM', 'Mar 01, 2023 12:34:22 PM', '1', 'Working'),
(39, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 12:35:06 PM', 'Mar 01, 2023 12:35:06 PM', '1', 'Working'),
(39, 'CPU', 'Intel I3', 'Mar 01, 2023 12:35:27 PM', 'Mar 01, 2023 12:35:27 PM', '1', 'Working'),
(39, 'Monitor', 'Acer', 'Mar 01, 2023 12:35:42 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(39, 'Mouse', 'TWolf', 'Mar 01, 2023 12:36:01 PM', 'Mar 01, 2023 12:36:01 PM', '1', 'Working'),
(39, 'Keyboard', 'Xitrix', 'Mar 01, 2023 12:36:13 PM', 'Mar 01, 2023 12:36:13 PM', '1', 'Working'),
(39, 'RAM', 'Kingston', 'Mar 01, 2023 12:36:49 PM', 'Mar 01, 2023 12:36:49 PM', '1', 'Working'),
(40, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 12:37:27 PM', 'Mar 01, 2023 12:37:27 PM', '1', 'Working'),
(40, 'CPU', 'Intel I3', 'Mar 01, 2023 12:37:45 PM', 'Mar 01, 2023 12:37:45 PM', '1', 'Working'),
(40, 'Monitor', 'Acer', 'Mar 01, 2023 12:38:57 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(40, 'Mouse', 'TWolf', 'Mar 01, 2023 12:39:17 PM', 'Mar 01, 2023 12:39:17 PM', '1', 'Working'),
(40, 'Keyboard', 'TWolf', 'Mar 01, 2023 12:39:36 PM', 'Mar 01, 2023 12:39:36 PM', '1', 'Working'),
(40, 'RAM', 'Kingston', 'Mar 01, 2023 12:39:52 PM', 'Mar 01, 2023 12:39:52 PM', '1', 'Working'),
(41, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 12:40:52 PM', 'Mar 01, 2023 12:40:52 PM', '1', 'Working'),
(41, 'CPU', 'Intel I3', 'Mar 01, 2023 12:41:33 PM', 'Mar 01, 2023 12:41:33 PM', '1', 'Working'),
(41, 'Monitor', 'Acer', 'Mar 01, 2023 12:41:50 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(41, 'Mouse', 'G100s', 'Mar 01, 2023 12:42:04 PM', 'Mar 01, 2023 12:42:04 PM', '1', 'Working'),
(41, 'Keyboard', 'Xitrix', 'Mar 01, 2023 12:42:28 PM', 'Mar 01, 2023 12:42:28 PM', '1', 'Working'),
(41, 'RAM', 'Kingston', 'Mar 01, 2023 12:43:24 PM', 'Mar 01, 2023 12:43:24 PM', '1', 'Working'),
(42, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 12:45:08 PM', 'Mar 01, 2023 12:45:08 PM', '1', 'Working'),
(42, 'CPU', 'Intel I3', 'Mar 01, 2023 12:45:31 PM', 'Mar 01, 2023 12:45:31 PM', '1', 'Working'),
(42, 'Monitor', 'Acer', 'Mar 01, 2023 12:45:49 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(42, 'Mouse', 'TWolf', 'Mar 01, 2023 12:46:03 PM', 'Mar 01, 2023 12:46:03 PM', '1', 'Working'),
(42, 'Keyboard', 'Xitrix', 'Mar 01, 2023 12:46:46 PM', 'Mar 01, 2023 12:46:46 PM', '1', 'Working'),
(42, 'RAM', 'Kingston', 'Mar 01, 2023 12:47:00 PM', 'Mar 01, 2023 12:47:00 PM', '1', 'Working'),
(43, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 12:48:23 PM', 'Mar 01, 2023 12:48:23 PM', '1', 'Working'),
(43, 'CPU', 'Intel I3', 'Mar 01, 2023 12:48:41 PM', 'Mar 01, 2023 12:48:41 PM', '1', 'Working'),
(43, 'Monitor', 'Acer', 'Mar 01, 2023 12:48:59 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(43, 'Mouse', '84Tech', 'Mar 01, 2023 12:49:30 PM', 'Mar 01, 2023 12:49:30 PM', '1', 'Working'),
(43, 'Keyboard', 'Xitrix', 'Mar 01, 2023 12:49:49 PM', 'Mar 01, 2023 12:49:49 PM', '1', 'Working'),
(43, 'RAM', 'Kingston', 'Mar 01, 2023 12:50:03 PM', 'Mar 01, 2023 12:50:03 PM', '1', 'Working'),
(44, 'CPU', 'Intel I3', 'Mar 01, 2023 12:51:13 PM', 'Mar 01, 2023 12:51:13 PM', '1', 'Working'),
(44, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 12:51:49 PM', 'Mar 01, 2023 12:51:49 PM', '1', 'Working'),
(44, 'Monitor', 'Acer', 'Mar 01, 2023 12:54:13 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(44, 'Mouse', 'Xitrix', 'Mar 01, 2023 12:54:29 PM', 'Mar 01, 2023 12:54:29 PM', '1', 'Working'),
(44, 'Keyboard', 'Xitrix', 'Mar 01, 2023 12:54:41 PM', 'Mar 01, 2023 12:54:41 PM', '1', 'Working'),
(44, 'RAM', 'Kingston', 'Mar 01, 2023 12:54:53 PM', 'Mar 01, 2023 12:54:53 PM', '1', 'Working'),
(45, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 12:55:39 PM', 'Mar 01, 2023 12:55:39 PM', '1', 'Working'),
(45, 'CPU', 'Intel I3', 'Mar 01, 2023 12:56:07 PM', 'Mar 01, 2023 12:56:07 PM', '1', 'Working'),
(45, 'Monitor', 'Acer', 'Mar 01, 2023 12:56:27 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(45, 'Mouse', 'TWolf', 'Mar 01, 2023 12:56:40 PM', 'Mar 01, 2023 12:56:40 PM', '1', 'Working'),
(45, 'Keyboard ', 'Acer', 'Mar 01, 2023 12:56:58 PM', 'Mar 01, 2023 12:56:58 PM', '1', 'Working'),
(45, 'RAM', 'Kingston', 'Mar 01, 2023 12:57:14 PM', 'Mar 01, 2023 12:57:14 PM', '1', 'Working'),
(46, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 01:01:03 PM', 'Mar 01, 2023 01:01:03 PM', '1', 'Working'),
(46, 'CPU', 'Intel I3', 'Mar 01, 2023 01:01:28 PM', 'Mar 01, 2023 01:01:28 PM', '1', 'Working'),
(46, 'Monitor', 'Acer', 'Mar 01, 2023 01:01:53 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(46, 'Mouse', 'TWolf', 'Mar 01, 2023 01:02:29 PM', 'Mar 01, 2023 01:02:29 PM', '1', 'Working'),
(46, 'Keyboard', 'Acer', 'Mar 01, 2023 01:02:47 PM', 'Mar 01, 2023 01:02:47 PM', '1', 'Working'),
(46, 'RAM', 'Kingston', 'Mar 01, 2023 01:03:00 PM', 'Mar 01, 2023 01:03:00 PM', '1', 'Working'),
(17, 'CD ROM', 'Matsushita', 'Mar 01, 2023 01:03:49 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(47, 'CD ROM', 'Matsushita', 'Mar 01, 2023 01:04:09 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(47, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 01:04:27 PM', 'Mar 01, 2023 01:04:27 PM', '1', 'Working'),
(47, 'CPU', 'Intel I3', 'Mar 01, 2023 01:04:50 PM', 'Mar 01, 2023 01:04:50 PM', '1', 'Working'),
(47, 'Monitor', 'Acer', 'Mar 01, 2023 01:05:08 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(47, 'Mouse', 'TWolf', 'Mar 01, 2023 01:05:29 PM', 'Mar 01, 2023 01:05:29 PM', '1', 'Working'),
(47, 'Keyboard', 'Acer', 'Mar 01, 2023 01:05:45 PM', 'Mar 01, 2023 01:05:45 PM', '1', 'Working'),
(47, 'RAM', 'Kingston', 'Mar 01, 2023 01:06:14 PM', 'Mar 01, 2023 01:06:14 PM', '1', 'Working'),
(46, 'CD ROM', 'Matsushita', 'Mar 01, 2023 01:06:53 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(3, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 01:17:19 PM', 'Mar 01, 2023 01:17:19 PM', '1', 'Working'),
(1, 'CD ROM', 'Matsushita', 'Mar 01, 2023 03:57:24 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(48, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:12:19 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(48, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 04:12:37 PM', 'Mar 01, 2023 04:12:37 PM', '1', 'Working'),
(48, 'CPU', 'Intel I3', 'Mar 01, 2023 04:13:41 PM', 'Mar 01, 2023 04:13:41 PM', '1', 'Working'),
(48, 'Monitor', 'Acer', 'Mar 01, 2023 04:13:54 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(48, 'Mouse', 'TWolf', 'Mar 01, 2023 04:14:07 PM', 'Mar 01, 2023 04:14:07 PM', '1', 'Working'),
(48, 'Keyboard', 'Acer', 'Mar 01, 2023 04:14:42 PM', 'Mar 01, 2023 04:14:42 PM', '1', 'Working'),
(48, 'RAM', 'Kingston', 'Mar 01, 2023 04:15:09 PM', 'Mar 01, 2023 04:15:09 PM', '1', 'Working'),
(49, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:15:30 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(49, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 04:15:42 PM', 'Mar 01, 2023 04:15:42 PM', '1', 'Working'),
(49, 'CPU', 'Intel I3', 'Mar 01, 2023 04:16:06 PM', 'Mar 01, 2023 04:16:06 PM', '1', 'Working'),
(49, 'Monitor', 'Acer', 'Mar 01, 2023 04:16:17 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(49, 'Mouse', 'TWolf', 'Mar 01, 2023 04:16:35 PM', 'Mar 01, 2023 04:16:35 PM', '1', 'Working'),
(49, 'Keyboard', 'Xitrix', 'Mar 01, 2023 04:16:51 PM', 'Mar 01, 2023 04:16:51 PM', '1', 'Working'),
(49, 'RAM', 'Kingston', 'Mar 01, 2023 04:17:30 PM', 'Mar 01, 2023 04:17:30 PM', '1', 'Working'),
(50, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:17:46 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(50, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 04:17:58 PM', 'Mar 01, 2023 04:17:58 PM', '1', 'Working'),
(50, 'CPU', 'Intel I3', 'Mar 01, 2023 04:18:16 PM', 'Mar 01, 2023 04:18:16 PM', '1', 'Working'),
(50, 'Monitor', 'Acer', 'Mar 01, 2023 04:18:39 PM', 'Mar 01, 2023 04:19:47 PM', '1', 'Working'),
(50, 'Mouse', 'Silverster', 'Mar 01, 2023 04:18:51 PM', 'Mar 01, 2023 04:18:51 PM', '1', 'Working'),
(50, 'Keyboard', 'Acer', 'Mar 01, 2023 04:19:16 PM', 'Mar 01, 2023 04:19:16 PM', '1', 'Working'),
(50, 'RAM', 'Kingston', 'Mar 01, 2023 04:19:30 PM', 'Mar 01, 2023 04:19:30 PM', '1', 'Working'),
(51, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:19:59 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(51, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 04:21:51 PM', 'Mar 01, 2023 04:21:51 PM', '1', 'Working'),
(51, 'CPU', 'Intel I3', 'Mar 01, 2023 04:23:07 PM', 'Mar 01, 2023 04:23:07 PM', '1', 'Working'),
(51, 'Monitor', 'Xitrix', 'Mar 01, 2023 04:23:36 PM', 'Mar 01, 2023 04:23:36 PM', '1', 'Working'),
(51, 'Mouse', 'TWolf', 'Mar 01, 2023 04:24:41 PM', 'Mar 01, 2023 04:24:41 PM', '1', 'Working'),
(51, 'Keyboard', 'Xitrix', 'Mar 01, 2023 04:24:51 PM', 'Mar 01, 2023 04:24:51 PM', '1', 'Working'),
(51, 'RAM', 'Kingston', 'Mar 01, 2023 04:25:10 PM', 'Mar 01, 2023 04:25:10 PM', '1', 'Working'),
(52, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:26:31 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(52, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 04:26:49 PM', 'Mar 01, 2023 04:26:49 PM', '1', 'Working'),
(52, 'CPU', 'Intel I3', 'Mar 01, 2023 04:27:11 PM', 'Mar 01, 2023 04:27:11 PM', '1', 'Working'),
(52, 'Monitor', 'Xitrix', 'Mar 01, 2023 04:27:25 PM', 'Mar 01, 2023 04:27:25 PM', '1', 'Working'),
(52, 'Mouse', 'TWolf', 'Mar 01, 2023 04:27:45 PM', 'Mar 01, 2023 04:27:45 PM', '1', 'Working'),
(52, 'Keyboard', 'Acer', 'Mar 01, 2023 04:27:56 PM', 'Mar 01, 2023 04:27:56 PM', '1', 'Working'),
(52, 'RAM', 'Kingston', 'Mar 01, 2023 04:28:50 PM', 'Mar 01, 2023 04:28:50 PM', '1', 'Working'),
(53, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:29:17 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(53, 'Hard Drive', 'Seagate Baraccuda', 'Mar 01, 2023 04:30:03 PM', 'Mar 01, 2023 04:30:03 PM', '1', 'Working'),
(53, 'CPU', 'Intel I3', 'Mar 01, 2023 04:30:29 PM', 'Mar 01, 2023 04:30:29 PM', '1', 'Working'),
(53, 'Monitor', 'Xitrix', 'Mar 01, 2023 04:30:44 PM', 'Mar 01, 2023 04:30:44 PM', '1', 'Working'),
(53, 'Mouse', 'TWolf', 'Mar 01, 2023 04:32:53 PM', 'Mar 01, 2023 04:32:53 PM', '1', 'Working'),
(53, 'Keyboard', 'Xitrix', 'Mar 01, 2023 04:33:08 PM', 'Mar 01, 2023 04:33:08 PM', '1', 'Working'),
(53, 'RAM', 'Kingston', 'Mar 01, 2023 04:33:24 PM', 'Mar 01, 2023 04:33:24 PM', '1', 'Working'),
(3, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:34:32 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(4, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:35:49 PM', 'Jun 03, 2023 09:23:56 AM', '1', 'Working'),
(5, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:36:06 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(6, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:36:26 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(7, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:36:44 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(8, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:37:57 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(9, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:38:12 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(10, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:38:27 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(11, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:39:16 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(12, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:39:34 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(13, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:39:51 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(14, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:40:06 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(15, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:40:28 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(16, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:40:52 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(18, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:41:50 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(19, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:42:05 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(20, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:42:27 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(21, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:42:42 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(22, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:42:56 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(23, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:43:21 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(24, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:43:39 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(25, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:44:00 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(26, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:44:13 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(27, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:44:30 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(28, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:45:50 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(29, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:46:11 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(30, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:46:27 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(31, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:46:42 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(32, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:46:56 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(36, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:47:29 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(34, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:47:46 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(35, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:48:04 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(37, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:48:20 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(38, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:48:38 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(39, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:48:55 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(40, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:49:16 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(41, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:49:32 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(42, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:49:50 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(43, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:50:04 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(44, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:50:24 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(45, 'CD ROM', 'Matsushita', 'Mar 01, 2023 04:50:40 PM', 'Mar 16, 2023 02:30:55 pm', '1', 'Working'),
(2, 'CD ROM', 'Matsushita', 'Jun 03, 2023 08:55:18 AM', 'Jun 03, 2023 09:18:34 AM', '1', 'Working');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `ScheduleID` int NOT NULL,
  `User` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Activity` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TimeIn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TimeOut` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`ScheduleID`, `User`, `Activity`, `TimeIn`, `TimeOut`, `Date`) VALUES
(1, 'Professor Vince De Vera', '*Sended Major Report, ', '07:57 PM', '08:01 PM', 'May 04, 2023 '),
(2, 'MIC/EDP', '*Delete in Major Report, ', '08:03 PM', '08:04 PM', 'May 04, 2023 '),
(3, 'Professor Liza Magno', '*Sended Major Report, ', '08:05 PM', '08:08 PM', 'May 04, 2023 '),
(4, 'Professor Eddie Tillada', '*Sended Major Report, ', '08:09 PM', '08:11 PM', 'May 04, 2023 '),
(5, 'MIC/EDP', '*Added an Account, Edited an Account, ', '08:09 PM', '08:14 PM', 'May 04, 2023 '),
(6, 'Professor Kenneth Martinez', '*Sended Major Report, ', '08:14 PM', '08:17 PM', 'May 04, 2023 '),
(7, 'MIC/EDP', '*Updated in Major Report, Edited an Account, ', '08:14 PM', '08:18 PM', 'May 04, 2023 '),
(8, 'Professor Kenneth Cobarrubias', '*Sended Major Report, Sended Major Report, ', '08:23 PM', '08:26 PM', 'May 04, 2023 '),
(9, 'Professor Rhina Corpuz', '*Sended Major Report, Sended Major Report, ', '08:23 PM', '10:02 PM', 'May 04, 2023 '),
(10, 'MIC/EDP', '*Updated in Inventory, ', '02:47 PM', '02:49 PM', 'May 16, 2023 '),
(11, 'MIC/EDP', '*Updated in Inventory, ', '03:17 PM', '03:18 PM', 'May 16, 2023 '),
(12, 'MIC/EDP', '*Updated in Inventory, ', '03:27 PM', '03:29 PM', 'May 16, 2023 '),
(13, 'MIC/EDP', '*Updated in Inventory, ', '03:29 PM', '03:32 PM', 'May 16, 2023 '),
(14, 'MIC/EDP', '*Updated in Inventory, ', '03:33 PM', '03:36 PM', 'May 16, 2023 '),
(15, 'MIC/EDP', '*Updated in Inventory, ', '03:45 PM', '03:47 PM', 'May 16, 2023 '),
(16, 'MIC/EDP', '*Updated in Inventory, Updated in Inventory, ', '03:06 PM', '03:09 PM', 'May 17, 2023 '),
(17, 'MIC/EDP', '*Updated in Inventory, Updated in Inventory, ', '05:33 PM', '05:41 PM', 'May 27, 2023 '),
(18, 'MIC/EDP', '*Updated in Inventory, ', '06:31 PM', '07:21 PM', 'May 29, 2023 '),
(19, 'MIC/EDP', '*Added in Inventory, Updated in Inventory, Delete in Inventory, Updated in Inventory, Updated in Inventory, Updated in Inventory, ', '07:10 AM', '07:14 AM', 'May 30, 2023 '),
(20, 'Professor Rhina Corpuz', '*Sended Major Report, Sended Major Report, ', '07:10 AM', '07:17 AM', 'May 30, 2023 '),
(21, 'MIC/EDP', '*Updated in Inventory, Updated in Inventory, Updated in Inventory, Updated in Inventory, ', '03:41 PM', '04:27 PM', 'Jun 01, 2023 '),
(22, 'MIC/EDP', '*Sended Major Report, ', '05:15 PM', '06:03 PM', 'Jun 03, 2023 '),
(23, 'MIC/EDP', '*Change Pas, ', '08:28 PM', '08:31 PM', 'Jun 03, 2023'),
(24, 'Professor Rhina Corpuz', '*Sended Major Report, ', '05:15 PM', '10:52 PM', 'Jun 03, 2023 '),
(25, 'Professor Rhina Corpuz', '*Minor Report, ', '06:18 PM', '06:20 PM', 'Jun 04, 2023'),
(26, 'MIC/EDP', '*Deleted Report, Deleted Report, Deleted Report, Deleted Report, Deleted Report, Deleted Report, Deleted Report, Deleted Report, Deleted Report, Deleted Report, ', '04:56 PM', '04:59 PM', 'Jun 05, 2023'),
(27, 'MIC/EDP', '*Borrowed Projector, Log Updated, ', '05:56 PM', '06:00 PM', 'Jun 05, 2023'),
(28, 'Professor Bernadette Mabaga', '*Sended Major Report, Minor Report, Minor Report, ', '06:26 PM', '06:30 PM', 'Jun 05, 2023'),
(29, 'Professor Eddie Tillada', '*Sended Major Report, Minor Report, Minor Report, ', '06:26 PM', '08:06 PM', 'Jun 05, 2023'),
(30, 'Professor Rhina Corpuz', '*Minor Report, ', '08:17 PM', '08:19 PM', 'Jun 05, 2023'),
(31, 'MIC/EDP', '*Added Item, Updated Item, Deleted Item, Added Item, Updated Item, Deleted Item, Added Item, Borrowed Projector, Log Updated, Deleted Item, Added Report, Updated Report, Deleted Report, Updated Report, Added Report, Deleted Report, Added Log, Updated Log, Deleted Log, Added Account, Updated Account,Deleted Account, Change Pas, ', '09:08 PM', '09:22 PM', 'Jun 05, 2023'),
(32, 'Professor Rhina Corpuz', '*Minor Report, Sended Major Report, ', '09:08 PM', '09:28 PM', 'Jun 05, 2023');

-- --------------------------------------------------------

--
-- Table structure for table `loginn`
--

CREATE TABLE `loginn` (
  `Username` text NOT NULL,
  `Password` text NOT NULL,
  `Admin` int NOT NULL,
  `Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `loginn`
--

INSERT INTO `loginn` (`Username`, `Password`, `Admin`, `Name`) VALUES
('2020200407', 'kenneth', 1, 'MIC/EDP'),
('2020200405', 'rhina', 0, 'Professor Rhina Corpuz'),
('2020200406', 'vince', 0, 'Professor Vince De Vera'),
('2020200408', 'eddie', 0, 'Professor Eddie Tillada'),
('2020200409', 'kenken', 0, 'Professor Kenneth Cobarrubias'),
('2020200403', 'mabaga', 0, 'Professor Bernadette Mabaga'),
('2020200404', 'liza', 0, 'Professor Liza Magno'),
('2020200401', 'martinez', 0, 'Professor Kenneth Martinez');

-- --------------------------------------------------------

--
-- Table structure for table `mreport`
--

CREATE TABLE `mreport` (
  `ReportID` int NOT NULL,
  `User` text NOT NULL,
  `Problem` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Date` text NOT NULL,
  `Searched` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mreport`
--

INSERT INTO `mreport` (`ReportID`, `User`, `Problem`, `Date`, `Searched`) VALUES
(1, 'Professor Bernadette Mabaga', 'The Keyboard Has the Wrong Character Output', 'Jun 05, 2023 06:30 PM', 'Keyboard'),
(2, 'Professor Bernadette Mabaga', 'Freezing Of Mouse Cursor', 'Jun 05, 2023 06:30 PM', 'Mouse'),
(3, 'Professor Eddie Tillada', 'Mouse Double-Click Issue', 'Jun 05, 2023 08:05 PM', 'Mouse'),
(4, 'Professor Eddie Tillada', 'Uneven Behaviour Of Mouse Pointer', 'Jun 05, 2023 08:05 PM', 'Search the Problem Here'),
(5, 'Professor Liza Magno', 'The Keyboard Turns on But Won’t Function at All', 'Jun 05, 2023 08:09 PM', 'Keyboard Turns'),
(6, 'Professor Liza Magno', 'Faulty Mouse Batteries', 'Jun 05, 2023 08:10 PM', 'Mouse'),
(7, 'Professor Kenneth Cobarrubias', 'The Keyboard Turns on But Won’t Function at All', 'Jun 05, 2023 08:13 PM', 'Keyboard'),
(8, 'Professor Rhina Corpuz', 'Freezing Of Mouse Cursor', 'Jun 05, 2023 08:19 PM', 'Mouse'),
(9, 'Professor Rhina Corpuz', 'The Keyboard Turns on But Won’t Function at All', 'Jun 05, 2023 09:25 PM', 'Keyboard');

-- --------------------------------------------------------

--
-- Table structure for table `part`
--

CREATE TABLE `part` (
  `ItemID` text NOT NULL,
  `PC` text NOT NULL,
  `Brand` text NOT NULL,
  `Date` text NOT NULL,
  `LastUpdate` text NOT NULL,
  `Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `part`
--

INSERT INTO `part` (`ItemID`, `PC`, `Brand`, `Date`, `LastUpdate`, `Status`) VALUES
('1', 'PC 1 RW', 'Xitrix', 'Feb 27, 2023 09:48:24 PM', 'Feb 27, 2023 09:48:24 PM', 'Working'),
('2', 'PC 2 RW', 'Xitrix', 'Feb 27, 2023 09:53:18 PM', 'Feb 27, 2023 09:53:18 PM', 'Working'),
('3', 'PC 3 RW', 'Xitrix', 'Feb 27, 2023 09:58:49 PM', 'Feb 27, 2023 09:58:49 PM', 'Working'),
('4', 'PC 4 RW', 'Xitrix', 'Feb 27, 2023 10:01:14 PM', 'Feb 27, 2023 10:01:14 PM', 'Working'),
('5', 'PC 6 RW', 'Xitrix', 'Feb 27, 2023 10:02:38 PM', 'Feb 27, 2023 10:02:38 PM', 'Working'),
('6', 'PC 7 RW', 'Xitrix', 'Feb 27, 2023 10:02:55 PM', 'Feb 27, 2023 10:02:55 PM', 'Working'),
('7', 'PC 8 RW', 'Xitrix', 'Feb 27, 2023 10:03:20 PM', 'Feb 27, 2023 10:03:20 PM', 'Working'),
('8', 'PC 9 RW', 'Xitrix', 'Feb 27, 2023 10:05:09 PM', 'Feb 27, 2023 10:05:09 PM', 'Working'),
('9', 'PC 10 RW', 'Xitrix', 'Feb 27, 2023 10:05:23 PM', 'Feb 27, 2023 10:05:23 PM', 'Working'),
('10', 'PC 11 RW', 'Xitrix', 'Feb 27, 2023 10:07:03 PM', 'Feb 27, 2023 10:07:03 PM', 'Working'),
('11', 'PC 14 RW', 'Xitrix', 'Feb 27, 2023 10:08:03 PM', 'Feb 27, 2023 10:08:03 PM', 'Working'),
('12', 'PC 15 RW', 'Xitrix', 'Feb 27, 2023 10:08:17 PM', 'Feb 27, 2023 10:08:17 PM', 'Working'),
('13', 'PC 16 RW', 'Xitrix', 'Feb 27, 2023 10:08:29 PM', 'Feb 27, 2023 10:08:29 PM', 'Working'),
('14', 'PC 19 RW', 'Xitrix', 'Feb 27, 2023 10:09:08 PM', 'Feb 27, 2023 10:09:08 PM', 'Working'),
('15', 'PC 20 RW', 'Xitrix', 'Feb 27, 2023 10:09:21 PM', 'Feb 27, 2023 10:09:21 PM', 'Working'),
('16', 'PC 22 RW', 'Xitrix', 'Feb 27, 2023 10:10:00 PM', 'Feb 27, 2023 10:10:00 PM', 'Working'),
('17', 'PC 23 RW', 'Xitrix', 'Feb 27, 2023 10:10:13 PM', 'Feb 27, 2023 10:10:13 PM', 'Working'),
('18', 'PC 24 RW', 'Xitrix', 'Feb 27, 2023 10:10:26 PM', 'Feb 27, 2023 10:10:26 PM', 'Working'),
('19', 'PC 25 RW', 'Xitrix', 'Feb 27, 2023 10:11:05 PM', 'Feb 27, 2023 10:11:05 PM', 'Working'),
('20', 'PC 26 RW', 'Xitrix', 'Feb 27, 2023 10:11:22 PM', 'Feb 27, 2023 10:11:22 PM', 'Working'),
('21', 'PC 28 RW', 'Xitrix', 'Feb 27, 2023 10:11:56 PM', 'Feb 27, 2023 10:11:56 PM', 'Working'),
('22', 'PC 30 RW', 'Xitrix', 'Feb 27, 2023 10:12:12 PM', 'Feb 27, 2023 10:12:12 PM', 'Working'),
('23', 'PC 32 RW', 'Xitrix', 'Feb 27, 2023 10:12:40 PM', 'Feb 27, 2023 10:12:40 PM', 'Working'),
('24', 'PC 42 RW', 'Xitrix', 'Feb 27, 2023 10:12:55 PM', 'Feb 27, 2023 10:12:55 PM', 'Working'),
('25', 'PC 1 LW', 'Xitrix', 'Feb 27, 2023 10:13:36 PM', 'Feb 27, 2023 10:13:36 PM', 'Working'),
('26', 'PC 2 LW', 'Xitrix', 'Feb 27, 2023 10:16:14 PM', 'Feb 27, 2023 10:16:14 PM', 'Working'),
('27', 'PC 3 LW', 'Xitrix', 'Feb 27, 2023 10:16:27 PM', 'Feb 27, 2023 10:16:27 PM', 'Working'),
('28', 'PC 4 LW', 'Xitrix', 'Feb 27, 2023 10:16:38 PM', 'Feb 27, 2023 10:16:38 PM', 'Working'),
('29', 'PC 5 LW', 'Xitrix', 'Feb 27, 2023 10:26:42 PM', 'Feb 27, 2023 10:26:42 PM', 'Working'),
('30', 'PC 6 LW', 'Xitrix', 'Feb 27, 2023 10:27:57 PM', 'Feb 27, 2023 10:27:57 PM', 'Working'),
('31', 'PC 7 LW', 'Xitrix', 'Feb 27, 2023 10:28:11 PM', 'Feb 27, 2023 10:28:11 PM', 'Working'),
('32', 'PC 8 LW', 'Xitrix', 'Feb 27, 2023 10:28:22 PM', 'Feb 27, 2023 10:28:22 PM', 'Working'),
('33', 'PC 9 LW', 'Xitrix', 'Feb 27, 2023 10:28:33 PM', 'Feb 27, 2023 10:30:34 PM', 'Defective'),
('34', 'PC 10 LW', 'Xitrix', 'Feb 27, 2023 10:29:59 PM', 'Feb 27, 2023 10:30:52 PM', 'Defective'),
('35', 'PC 11 LW', 'Xitrix', 'Feb 27, 2023 10:30:11 PM', 'Feb 27, 2023 10:30:11 PM', 'Working'),
('36', 'PC 12 LW', 'Xitrix', 'Feb 27, 2023 10:31:00 PM', 'Feb 27, 2023 10:31:00 PM', 'Working'),
('37', 'PC 13 LW', 'Xitrix', 'Feb 27, 2023 10:31:12 PM', 'Feb 27, 2023 10:31:12 PM', 'Working'),
('38', 'PC 14 LW', 'Xitrix', 'Feb 27, 2023 10:31:34 PM', 'Feb 27, 2023 10:31:34 PM', 'Working'),
('39', 'PC 15 LW', 'Xitrix', 'Feb 27, 2023 10:31:48 PM', 'Feb 27, 2023 10:31:48 PM', 'Working'),
('40', 'PC 16 LW', 'Xitrix', 'Feb 27, 2023 10:32:02 PM', 'Feb 27, 2023 10:32:02 PM', 'Working'),
('41', 'PC 17 LW', 'Xitrix', 'Feb 27, 2023 10:32:16 PM', 'Feb 27, 2023 10:32:16 PM', 'Working'),
('42', 'PC 18 LW', 'Xitrix', 'Feb 27, 2023 10:32:29 PM', 'Feb 27, 2023 10:32:29 PM', 'Working'),
('43', 'PC 19 LW', 'Xitrix', 'Feb 27, 2023 10:32:40 PM', 'Feb 27, 2023 10:32:40 PM', 'Working'),
('44', 'PC 20 LW', 'Xitrix', 'Feb 27, 2023 10:32:53 PM', 'Feb 27, 2023 10:32:53 PM', 'Working'),
('45', 'PC 21 LW', 'Xitrix', 'Feb 27, 2023 10:33:07 PM', 'Feb 27, 2023 10:33:07 PM', 'Defective'),
('46', 'PC 22 LW', 'Xitrix', 'Feb 27, 2023 10:33:20 PM', 'Feb 27, 2023 10:33:20 PM', 'Working'),
('47', 'PC 23 LW', 'Xitrix', 'Feb 27, 2023 10:33:30 PM', 'Feb 27, 2023 10:33:30 PM', 'Working'),
('48', 'PC 24 LW', 'Xitrix', 'Feb 27, 2023 10:33:43 PM', 'Feb 27, 2023 10:33:43 PM', 'Working'),
('49', 'PC 25 LW', 'Xitrix', 'Feb 27, 2023 10:33:59 PM', 'Feb 27, 2023 10:33:59 PM', 'Working'),
('50', 'PC 26 LW', 'Xitrix', 'Feb 27, 2023 10:34:13 PM', 'Feb 27, 2023 10:34:13 PM', 'Working'),
('51', 'PC 27 LW', 'Xitrix', 'Feb 27, 2023 10:34:34 PM', 'Feb 27, 2023 10:34:34 PM', 'Working'),
('52', 'PC 28 LW', 'Xitrix', 'Feb 27, 2023 10:34:47 PM', 'Feb 27, 2023 10:34:47 PM', 'Working'),
('53', 'PC 29 LW', 'Xitrix', 'Feb 27, 2023 10:34:59 PM', 'Feb 27, 2023 10:34:59 PM', 'Working'),
('54', 'PC 30 LW', 'Xitrix', 'Feb 27, 2023 10:35:14 PM', 'May 02, 2023 01:26:08 PM', 'Defective');

-- --------------------------------------------------------

--
-- Table structure for table `plog`
--

CREATE TABLE `plog` (
  `LogID` int NOT NULL,
  `Projector` text NOT NULL,
  `User` text NOT NULL,
  `TimeIn` text NOT NULL,
  `TimeOut` text NOT NULL,
  `Date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plog`
--

INSERT INTO `plog` (`LogID`, `Projector`, `User`, `TimeIn`, `TimeOut`, `Date`) VALUES
(1, '1', 'Professor Liza Magno', '12:15 PM', '12:20 PM', 'Mar 17, 2023'),
(2, '2', 'Professor Bernadette Mabaga', '12:15 PM', '12:20 PM', 'Mar 17, 2023'),
(3, '3', 'Professor Eddie Tillada', '12:16 PM', '12:20 PM', 'Mar 17, 2023'),
(4, '4', 'Professor Rhina Corpuz', '12:16 PM', '12:19 PM', 'Mar 17, 2023'),
(5, '5', 'Professor Vince De Vera', '12:17 PM', '12:20 PM', 'Mar 17, 2023'),
(6, '10', 'Professor Kenneth Cobarrubias', '12:17 PM', '12:19 PM', 'Mar 17, 2023'),
(7, '9', 'Professor Fae Illuit', '12:17 PM', '12:20 PM', 'Mar 17, 2023'),
(8, '8', 'Professor Daniel Reyes', '12:18 PM', '12:20 PM', 'Mar 17, 2023'),
(9, '7', 'Professor Christian Fernandez', '12:18 PM', '12:21 PM', 'Mar 17, 2023'),
(10, '6', 'Professor Wendelyn Samarita', '12:18 PM', '12:19 PM', 'Mar 17, 2023'),
(11, '8', 'Professor Vince De Vera', '12:21 PM', '12:21 PM', 'Mar 17, 2023'),
(12, '5', 'Professor Kenneth Cobarrubias', '03:25 PM', '03:25 PM', 'May 02, 2023'),
(13, '4', 'Professor Kenneth Cobarrubias', '02:48 PM', '03:18 PM', 'May 16, 2023'),
(14, '5', 'Professor Vince De Vera', '03:28 PM', '03:31 PM', 'May 16, 2023'),
(15, '10', 'Professor Eddie Tillada', '03:35 PM', '03:46 PM', 'May 16, 2023'),
(16, '8', 'Professor Bernadette Mabaga', '03:08 PM', '03:08 PM', 'May 17, 2023'),
(17, '6', 'Professor Kenneth Cobarrubias', '05:40 PM', '05:41 PM', 'May 27, 2023'),
(18, '4', 'Professor Rhina Corpuz', '07:11 PM', '07:13 AM', 'May 29, 2023'),
(19, '5', 'Professor Eddie Tillada', '07:12 AM', '07:13 AM', 'May 30, 2023'),
(20, '1', 'Prof De Matanto', '03:51 PM', '03:54 PM', 'Jun 01, 2023'),
(21, '1', 'Prof Dema', '04:16 PM', '04:16 PM', 'Jun 01, 2023'),
(22, '2', 'Professor Kenneth Cobarrubias', '10:52 AM', '11:28 AM', 'Jun 03, 2023'),
(23, '2', 'Professor Rhina Corpuz', '11:32 AM', '11:33 AM', 'Jun 03, 2023'),
(24, '4', 'Professor Eddie Tillada', '11:33 AM', '11:33 AM', 'Jun 03, 2023'),
(25, '9', 'Professor Eddie Tillada', '05:58 PM', '05:59 PM', 'Jun 05, 2023'),
(26, '11', 'Professor Kenneth Cobarrubias', '09:13 PM', '09:14 PM', 'Jun 05, 2023');

-- --------------------------------------------------------

--
-- Table structure for table `projector`
--

CREATE TABLE `projector` (
  `ProjectorID` text NOT NULL,
  `Brand` text NOT NULL,
  `Date` text NOT NULL,
  `User` text NOT NULL,
  `Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `projector`
--

INSERT INTO `projector` (`ProjectorID`, `Brand`, `Date`, `User`, `Status`) VALUES
('1', 'EPSON', 'Jun 01, 2023 04:16:24 PM', 'NA', 'Available'),
('2', 'EPSON', 'Jun 03, 2023 11:32:36 AM', 'NA', 'Available'),
('3', 'EPSON', 'May 02, 2023 01:30:01 PM', 'Out of Order', 'Defective'),
('4', 'EPSON', 'Jun 03, 2023 11:33:06 AM', 'NA', 'Available'),
('5', 'EPSON', 'May 30, 2023 07:12:44 AM', 'NA', 'Available'),
('6', 'EPSON', 'May 27, 2023 05:40:33 PM', 'NA', 'Available'),
('7', 'EPSON', 'Mar 17, 2023 12:18:35 PM', 'NA', 'Available'),
('8', 'EPSON', 'May 17, 2023 03:08:10 PM', 'NA', 'Available'),
('9', 'EPSON', 'Jun 05, 2023 05:58:54 PM', 'NA', 'Available'),
('10', 'EPSON', 'May 16, 2023 03:35:56 PM', 'NA', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `ReportID` int NOT NULL,
  `User` text NOT NULL,
  `ToolsNEquipment` text NOT NULL,
  `Casualty` text NOT NULL,
  `DateNTime` text NOT NULL,
  `AdminInCharge` text NOT NULL,
  `Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`ReportID`, `User`, `ToolsNEquipment`, `Casualty`, `DateNTime`, `AdminInCharge`, `Status`) VALUES
(1, '2020200404', 'Projector #5', 'Projector number 5 is defective', 'May 04, 2023 08:08:02 PM', 'Professor Liza Magno', 'Waiting List'),
(2, '2020200408', 'PC 7 RW', 'Black screen encountered', 'May 04, 2023 08:17:39 PM', 'Professor Eddie Tillada', 'Settled'),
(3, '2020200401', 'Monitor of PC 22', 'it is not working', 'May 04, 2023 08:16:24 PM', 'Professor Kenneth Martinez', 'Waiting List'),
(4, '2020200409', 'CPU of PC 6 RW', 'Processor is defective', 'May 04, 2023 08:25:07 PM', 'Professor Kenneth Cobarrubias', 'Waiting List'),
(5, '2020200409', 'Mouse of PC 26 LW', 'Mouse is defective', 'May 04, 2023 08:25:43 PM', 'Professor Kenneth Cobarrubias', 'Waiting List'),
(6, '2020200405', 'CPU of PC 20 RW', 'Black Screen', 'May 04, 2023 09:54:38 PM', 'Professor Rhina Corpuz', 'Waiting List'),
(7, '2020200405', 'Keyboard of PC 2 RW', 'Some keys are not functioning well', 'May 04, 2023 10:02:07 PM', 'Professor Rhina Corpuz', 'Waiting List'),
(8, '2020200405', 'LAN Cable', 'Its not functioning', 'May 30, 2023 07:15:11 AM', 'Professor Rhina Corpuz', 'Waiting List'),
(9, '2020200405', 'PC 42 RW', 'Not working', 'May 30, 2023 07:16:43 AM', 'Professor Rhina Corpuz', 'Waiting List'),
(10, '2020200405', 'Outlet', 'Not Working', 'Jun 03, 2023 10:01:14 PM', 'Professor Rhina Corpuz', 'Waiting List'),
(11, '2020200405', 'PC 11 RW', 'Not Working', 'Jun 03, 2023 10:03:10 PM', 'Professor Rhina Corpuz', 'Waiting List'),
(12, '2020200405', 'PC 13 LF', 'Black Screen', 'Jun 03, 2023 10:14:58 PM', 'Professor Rhina Corpuz', 'Waiting List'),
(13, '2020200405', 'PC 3 RW, Mouse', 'Mouse is not working', 'Jun 03, 2023 10:29:03 PM', 'Professor Rhina Corpuz', 'Waiting List'),
(14, '2020200405', 'PC 7 RW, RAM', 'Automatically Shutdown', 'Jun 03, 2023 10:34:28 PM', 'Professor Rhina Corpuz', 'Waiting List'),
(15, '2020200405', 'PC 6 RW, CPU', 'Not functioning well', 'Jun 04, 2023 09:05:29 AM', 'Professor Rhina Corpuz', 'Waiting List'),
(16, '2020200409', 'PC 4 RW, Keyboard', 'Not working', 'Jun 04, 2023 11:09:47 AM', 'Professor Kenneth Cobarrubias', 'Waiting List'),
(17, '2020200409', 'PC 7 RW, Hard Drive', 'The harddrive is corrupted', 'Jun 04, 2023 05:08:30 PM', 'Professor Kenneth Cobarrubias', 'Waiting List'),
(18, '2020200409', 'Ethernet Cable', 'It is Defective', 'Jun 05, 2023 09:17:09 PM', 'Professor Kenneth Cobarrubias', 'Settled'),
(19, '2020200403', 'PC 10 RW, Monitor ', 'Monitor is not functioning well', 'Jun 05, 2023 06:28:42 PM', 'Professor Bernadette Mabaga', 'Waiting List'),
(20, '2020200408', 'PC 24 LW, Keyboard', 'Not functioning well', 'Jun 05, 2023 08:04:53 PM', 'Professor Eddie Tillada', 'Waiting List'),
(21, '2020200405', 'PC 15 RW, CD ROM', 'CD ROM does not work', 'Jun 05, 2023 09:26:18 PM', 'Professor Rhina Corpuz', 'Waiting List');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `ItemID` int NOT NULL,
  `Item` text NOT NULL,
  `Brand` text NOT NULL,
  `Date` text NOT NULL,
  `LastUpdate` text NOT NULL,
  `Quantity` text NOT NULL,
  `Status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`ItemID`, `Item`, `Brand`, `Date`, `LastUpdate`, `Quantity`, `Status`) VALUES
(1, 'Mouse', 'TWolf', 'Mar 24, 2023', 'Mar 24, 2023', '20', 'Available'),
(2, 'LAN Cable', 'CAT 5', 'Mar 24, 2023', 'Mar 24, 2023', '29', 'Available'),
(3, 'Keyboard', 'TWolf', 'May 03, 2023', 'May 03, 2023', '10', 'Available'),
(4, 'Smart TV', 'Acer', 'May 03, 2023', 'May 03, 2023', '1', 'Available'),
(5, 'Ethernet Cable', 'Cat 6', 'May 03, 2023', 'May 03, 2023', '6', 'Available'),
(6, 'Chair', 'Allsteel', 'May 03, 2023', 'May 03, 2023', '60', 'Available'),
(7, 'Outlet', 'Universal', 'May 03, 2023', 'May 03, 2023', '80', 'Available');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
