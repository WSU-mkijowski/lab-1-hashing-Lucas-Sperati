[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/SPs4PNWX)
# Lab 1 : CEG 3400 Intro to Cyber Security

## Name: Lucas Sperati

### Task 1: Hashing

**Reminder Deliverable:** Is your `salted-data.csv` in this repository?

Answer the following in this file:

* How many unique users are in the data? 

**42 unique users**

* How many salts did you create?

**42 salts**

* How many possible combinations will I need to try to figure out the secret ID
  of all students (assume I know all potential secret IDs and have your 
  `salted-data.csv`)

**it would be 42 to the 42th power or 2.15x10^68th power**

* Instead of salts, if you were to use a nonce (unique number for each hashed
  field) how many possible combinations would I need to try?

**it would be the factoral of 42 (42!) or 1.4x10^51st power**

* Given the above, if this quiz data were *actual* class data, say for example
  your final exam, how would you store this dataset?  Why?

**I would store this data on a secure server that only has manual access. It isn't very practical but it would ensure it would be much harder to have the data stolen.**

```bash

openssl rand -base64 6 (gets unique salts) 
awk -F',' '{print $1}' quiz_data.csv | tr ',' '\n' | sort | uniq (gets unuque names from list)
printf  | sha256sum (prints hashes of anything you put between the printf and pipe)

```


---

### Task 2: Crypto Mining

**Reminder Deliverable:** Is your "mining" code in this repository (`mining/`)?
**Reminder Deliverable:** Is your nonce + word combos in `coins.txt`?

Answer the following:

* Paste your ***nonce+word(s) and hash(s)*** below ( either 3x `000` hashes or 1x `0000`
hash)

```
**000c2b8acf7682a457ff89f406ab1a50381af7b63b2f411d47e2bef51af759eb -
100modest**

**00060b66a56c29fdbf857770395fa50dbac4f52663e883d915d844b104bb876b -
104regarding**

**00041f7cc00413e8950130b5a32a992d52c8e1c6cb29420c8d499828a5ac1f42 -
102solar**

```

* How many words were in your dictionary?

**3014**
 
* How many nonces did your code iterate over?

**15070**

* What was the maximum number of hashes your code *could* compute given the above?



* What did you think about Task 2?

**I thought it sucked a little and really tested what I know about bash, but it was overall kinda fun**

* Is there a better way than brute force to attempt to get higher valued coins?

**yes**

* Why or why not?

**Brute force attacks take a very long time to run**

```bash

if [[ "${hashed_string:0:3}" == 000 ]]; then (if the first 3 characters from the string are 000 then it will run

```

