#  Copyright 2012 Go Daddy Operating Company, LLC   
#  
#  Licensed under the Apache License, Version 2.0 (the "License");    
#  you may not use this file except in compliance with the License.    
#  You may obtain a copy of the License at        
#  
#  http://www.apache.org/licenses/LICENSE-2.0    
#  
#  Unless required by applicable law or agreed to in writing, software    
#  distributed under the License is distributed on an "AS IS" BASIS,    
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.    
#  See the License for the specific language governing permissions and    
#  limitations under the License.

all:	health_checks.c
	tsxs -v -c $? -o health_checks.so

install:
	tsxs -i -o health_checks.so

clean:
	rm -f *.lo *.so
