.class final Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1;
.super Ljava/lang/Object;
.source "OssUtil.java"

# interfaces
.implements Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil;->upLoadFile(Landroid/content/Context;Ljava/lang/String;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$buffer:[B

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;[B)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1;->val$fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1;->val$buffer:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 248
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onResponseFailed : "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OssUtil"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponseSuccess(Lmtopsdk/mtop/domain/BaseOutDo;ILjava/lang/Object;)V
    .locals 0

    .line 231
    check-cast p1, Lcom/alibaba/ailabs/genie/assistant/mtop/response/MtopAlibabaAicloudTPhotoGetTokenResponse;

    .line 232
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/mtop/response/MtopAlibabaAicloudTPhotoGetTokenResponse;->getData()Lcom/alibaba/ailabs/genie/assistant/mtop/MtopAlibabaAicloudTPhotoGetTokenResponseData;

    move-result-object p1

    .line 233
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1$1;

    invoke-direct {p3, p0, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1;Lcom/alibaba/ailabs/genie/assistant/mtop/MtopAlibabaAicloudTPhotoGetTokenResponseData;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 243
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method
