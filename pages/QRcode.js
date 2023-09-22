import React from 'react'
import { useEffect } from 'react';
import toast from 'react-hot-toast';

const QRcode = () => {


    useEffect(() => {
        toast.success("You Are successfully Enrolled. Kindly Scan the QR code for payment and share with us.", {
            style: {
                border: "1px solid #4BB543",
                padding: "16px",
                color: "#4BB543",
            },
            iconTheme: {
                primary: "#4BB543",
                secondary: "#FFFAEE",
            },
        });
    }, [])

    return (
        <div className='' style={{ height: "70%" }}>
            <img src="/images/QR.jpg" alt="" style={{ display: "block", margin: "auto" }} />
        </div>
    )
}

export default QRcode