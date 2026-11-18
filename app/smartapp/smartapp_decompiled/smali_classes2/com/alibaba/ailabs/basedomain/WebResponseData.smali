.class public Lcom/alibaba/ailabs/basedomain/WebResponseData;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "WebResponseData.java"


# instance fields
.field private data:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 25
    new-instance p0, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    new-instance v0, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;-><init>(Lmtopsdk/mtop/domain/MtopRequest;)V

    new-instance v0, Lcom/alibaba/ailabs/basedomain/WebResponseData$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/basedomain/WebResponseData$1;-><init>()V

    .line 26
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->callback(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->build()Lcom/alibaba/ailabs/genie/second/MtopClient;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/WebResponseData;->data:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)Lcom/alibaba/ailabs/basedomain/WebResponseData;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/WebResponseData;->data:Ljava/lang/String;

    return-object p0
.end method
