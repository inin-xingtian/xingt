;; Auto-generated. Do not edit!


(when (boundp 'xingt_msgs::Person)
  (if (not (find-package "XINGT_MSGS"))
    (make-package "XINGT_MSGS"))
  (shadow 'Person (find-package "XINGT_MSGS")))
(unless (find-package "XINGT_MSGS::PERSON")
  (make-package "XINGT_MSGS::PERSON"))

(in-package "ROS")
;;//! \htmlinclude Person.msg.html


(intern "*UNKNOWN*" (find-package "XINGT_MSGS::PERSON"))
(shadow '*UNKNOWN* (find-package "XINGT_MSGS::PERSON"))
(defconstant xingt_msgs::Person::*UNKNOWN* 0)
(intern "*MALE*" (find-package "XINGT_MSGS::PERSON"))
(shadow '*MALE* (find-package "XINGT_MSGS::PERSON"))
(defconstant xingt_msgs::Person::*MALE* 1)
(intern "*FEMALE*" (find-package "XINGT_MSGS::PERSON"))
(shadow '*FEMALE* (find-package "XINGT_MSGS::PERSON"))
(defconstant xingt_msgs::Person::*FEMALE* 2)

(defun xingt_msgs::Person-to-symbol (const)
  (cond
        ((= const 0) 'xingt_msgs::Person::*unknown*)
        ((= const 1) 'xingt_msgs::Person::*male*)
        ((= const 2) 'xingt_msgs::Person::*female*)
        (t nil)))

(defclass xingt_msgs::Person
  :super ros::object
  :slots (_name _sex _age ))

(defmethod xingt_msgs::Person
  (:init
   (&key
    ((:name __name) "")
    ((:sex __sex) 0)
    ((:age __age) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _sex (round __sex))
   (setq _age (round __age))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:sex
   (&optional __sex)
   (if __sex (setq _sex __sex)) _sex)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; uint8 _sex
    1
    ;; uint8 _age
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint8 _sex
       (write-byte _sex s)
     ;; uint8 _age
       (write-byte _age s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _sex
     (setq _sex (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _age
     (setq _age (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get xingt_msgs::Person :md5sum-) "8361f88618d6779bd872f0ba928ced56")
(setf (get xingt_msgs::Person :datatype-) "xingt_msgs/Person")
(setf (get xingt_msgs::Person :definition-)
      "string name
uint8  sex
uint8  age

uint8 unknown = 0
uint8 male    = 1
uint8 female  = 2
")



(provide :xingt_msgs/Person "8361f88618d6779bd872f0ba928ced56")


