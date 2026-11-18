.class public Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;
.super Lcom/alibaba/ailabs/genie/client/data/BaseReqData;
.source "UpdateAsrReq.java"


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/client/data/BaseReqData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/data/UpdateAsrReq;->text:Ljava/lang/String;

    return-void
.end method
