.class public Lcom/alibaba/genie/tradepay/utils/ConstData;
.super Ljava/lang/Object;
.source "ConstData.java"


# static fields
.field public static KEY_VOICEPRINT_OPEN_COME_FROM:Ljava/lang/String; = "voiceprint_open_come_from"

.field public static OPEN_GUIDE_SCIENCE:I = 0x1

.field public static final PAY_ORDER_RETCODE_CANCELDYNAMIC:I = -0x7d9

.field public static final PAY_ORDER_RETCODE_FAILED:I = -0x7d1

.field public static final PAY_ORDER_RETCODE_FAILED_ACTIVITY_DESTORY:I = -0x7d3

.field public static final PAY_ORDER_RETCODE_FAILED_INTENT_DATAISNULL:I = -0x7d4

.field public static final PAY_ORDER_RETCODE_FAILED_PAYTIMEOUT:I = -0x7d8

.field public static final PAY_ORDER_RETCODE_FAILED_QRPAYCODEISNULL:I = -0x7d7

.field public static final PAY_ORDER_RETCODE_FAILED_USER_GIVEUP:I = -0x7d2

.field public static final PAY_ORDER_RETCODE_FAILED_USE_PHONEPAY:I = -0x7d5

.field public static final PAY_ORDER_RETCODE_FAILED_VPAYCODEISNULL:I = -0x7d6

.field public static final PAY_ORDER_RETCODE_SUCCESS:I = 0x7d0

.field public static final PAY_STATUS_NOTPAY:Ljava/lang/String; = "NOT_PAY"

.field public static final PAY_STATUS_SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static final PAY_STATUS_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final PUT_ORDER_RETCODE_FAILED:I = -0x3e9

.field public static final PUT_ORDER_RETCODE_FAILED_CREATE_FAILED:I = -0x3ec

.field public static final PUT_ORDER_RETCODE_FAILED_NO_PAY_TYPE:I = -0x3ed

.field public static final PUT_ORDER_RETCODE_FAILED_RENDER_FAILED:I = -0x3eb

.field public static final PUT_ORDER_RETCODE_FAILED_STOCK_NOENOUGH:I = -0x3ea

.field public static final PUT_ORDER_RETCODE_SUCCESS:I = 0x3e8

.field public static final PUT_ORDER_STATUS_CREATE_FAILED:Ljava/lang/String; = "CREATE_FAILED"

.field public static final PUT_ORDER_STATUS_INV_NOT_ENOUGH:Ljava/lang/String; = "INV_NOT_ENOUGH"

.field public static final PUT_ORDER_STATUS_NO_PAY_TYPE:Ljava/lang/String; = "NO_PAY_TYPE"

.field public static final PUT_ORDER_STATUS_RENDER_FAILED:Ljava/lang/String; = "RENDER_FAILED"

.field public static final PUT_ORDER_STATUS_SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static SEARCH_KEY:Ljava/lang/String; = ""

.field public static final SECRET_KEY:Ljava/lang/String; = "87fa86ae-d34a-48f2-b098-92973292cc94"

.field public static final TTID:Ljava/lang/String; = "10019843@turandot_android_1.1.0.309"

.field public static VOICEPRINT_COME_FROM_PAY_PAGE:Ljava/lang/String; = "voiceprint_open_from_pay"

.field public static VOICEPRINT_COME_FROM_SEARCH:Ljava/lang/String; = "voiceprint_open_from_search"

.field public static itemData:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static itemImgUrl:Ljava/lang/String; = null

.field public static mPutOrderResult:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult; = null

.field public static pageName:Ljava/lang/String; = "com.alibaba.ailabs.genie.shopping/shopping"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/genie/tradepay/utils/ConstData;->itemData:Ljava/util/HashMap;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
