.class public Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponse;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "DesktopGetResponse.java"


# instance fields
.field private data:Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponseData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lmtopsdk/mtop/domain/BaseOutDo;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getData()Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponseData;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponse;->data:Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponseData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponse;->getData()Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponseData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponseData;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponse;->data:Lcom/alibaba/ailabs/basedomain/mtop/response/DesktopGetResponseData;

    return-void
.end method
