.class Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$11;
.super Lcom/alibaba/ailabs/genie/pay/GeniePayCallbackImp;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;->payByNotMemberWithOneContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/MainActivity$11;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/MainActivity;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/pay/GeniePayCallbackImp;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .line 242
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MainActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
