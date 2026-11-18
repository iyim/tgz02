.class public Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponseData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "CorpusTipGetResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponseData$ModelBean;
    }
.end annotation


# instance fields
.field private model:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponseData$ModelBean;",
            ">;"
        }
    .end annotation
.end field

.field private statusCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponseData$ModelBean;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponseData;->model:Ljava/util/List;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponseData;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public setModel(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponseData$ModelBean;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponseData;->model:Ljava/util/List;

    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponseData;->statusCode:Ljava/lang/String;

    return-void
.end method
