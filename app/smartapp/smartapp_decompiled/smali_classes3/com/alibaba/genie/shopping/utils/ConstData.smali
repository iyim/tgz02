.class public Lcom/alibaba/genie/shopping/utils/ConstData;
.super Ljava/lang/Object;
.source "ConstData.java"


# static fields
.field public static KEY_VOICEPRINT_OPEN_COME_FROM:Ljava/lang/String; = "voiceprint_open_come_from"

.field public static final MTOP_AUTHINFO:Ljava/lang/String;

.field public static OPEN_GUIDE_SCIENCE:I = 0x1

.field public static final PAY_STATUS_NOTPAY:Ljava/lang/String; = "NOT_PAY"

.field public static final PAY_STATUS_SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static final PAY_STATUS_UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final PUT_ORDER_STATUS_CREATE_FAILED:Ljava/lang/String; = "CREATE_FAILED"

.field public static final PUT_ORDER_STATUS_INV_NOT_ENOUGH:Ljava/lang/String; = "INV_NOT_ENOUGH"

.field public static final PUT_ORDER_STATUS_NO_PAY_TYPE:Ljava/lang/String; = "NO_PAY_TYPE"

.field public static final PUT_ORDER_STATUS_RENDER_FAILED:Ljava/lang/String; = "RENDER_FAILED"

.field public static final PUT_ORDER_STATUS_SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static SEARCH_KEY:Ljava/lang/String; = ""

.field public static final SECRET_KEY:Ljava/lang/String; = "87fa86ae-d34a-48f2-b098-92973292cc94"

.field public static final TTID:Ljava/lang/String; = "10019843@turandot_android_1.1.0.328"

.field public static VOICEPRINT_COME_FROM_PAY_PAGE:Ljava/lang/String; = "voiceprint_open_from_pay"

.field public static VOICEPRINT_COME_FROM_SEARCH:Ljava/lang/String; = "voiceprint_open_from_search"

.field public static itemData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static itemImgUrl:Ljava/lang/String;

.field public static mPutOrderResult:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

.field public static pageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ \"userId\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/genie/shopping/ShoppingApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", \"uuid\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/genie/shopping/ShoppingApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/genie/shopping/utils/ConstData;->MTOP_AUTHINFO:Ljava/lang/String;

    const-string v0, "com.alibaba.ailabs.genie.shopping/shopping"

    .line 67
    sput-object v0, Lcom/alibaba/genie/shopping/utils/ConstData;->pageName:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/genie/shopping/utils/ConstData;->itemData:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getMtopAuthInfo()Ljava/lang/String;
    .locals 3

    .line 50
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "userId"

    .line 52
    invoke-static {}, Lcom/alibaba/genie/shopping/ShoppingApplication;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uuid"

    .line 53
    invoke-static {}, Lcom/alibaba/genie/shopping/ShoppingApplication;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "token"

    .line 54
    invoke-static {}, Lcom/alibaba/genie/shopping/ShoppingApplication;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getMtopToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 56
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 59
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
