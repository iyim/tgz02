.class Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper$1;
.super Lcom/alibaba/fastjson/TypeReference;
.source "MtopClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;->onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/fastjson/TypeReference<",
        "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;


# direct methods
.method varargs constructor <init>(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;[Ljava/lang/reflect/Type;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper$1;->this$1:Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;

    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/TypeReference;-><init>([Ljava/lang/reflect/Type;)V

    return-void
.end method
