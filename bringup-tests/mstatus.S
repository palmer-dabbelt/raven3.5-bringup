#*****************************************************************************
# srli.S
#-----------------------------------------------------------------------------
#
# Test srli instruction.
#

#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV64U
RVTEST_CODE_BEGIN

  #-------------------------------------------------------------
  # Arithmetic tests
  #-------------------------------------------------------------

  csrr a0, status
  TEST_IMM_OP( 2,  srli, 0xffffffff80000000, 0xffffffff80000000, 0  );

  TEST_PASSFAIL

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END
