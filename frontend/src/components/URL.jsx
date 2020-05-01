import React, { useState, useEffect } from 'react'
import { Table, Container } from 'react-bootstrap'
import axios from 'axios'
import { Link } from 'react-router-dom'
const url = '192.168.1.17'
const base = 'http://'+url
const APIURL  = base+':8080'
const HOMEURL = base+':80'

export {APIURL}
export {HOMEURL}

export default URL