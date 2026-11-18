.class Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response$1;
.super Landroid/os/AsyncTask;
.source "DMRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;

.field final synthetic val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;


# direct methods
.method constructor <init>(Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response$1;->this$1:Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;

    iput-object p2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response$1;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 p1, 0x1

    .line 241
    new-array v0, p1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess, request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response$1;->this$1:Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;

    iget-object v2, v2, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v2, v2, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "DMRequester"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response$1;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    if-eqz v0, :cond_0

    .line 243
    new-array p1, p1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuccess, response: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$Response$1;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {v1, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
