; ModuleID = 'ModuleMakerTest.bc'
source_filename = "test"

define i32 @main() {
EntryBlock:
  %addresult = add i32 2, 3
  ret i32 %addresult
}
