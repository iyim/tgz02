.class public Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponseData$ModelBean;
.super Ljava/lang/Object;
.source "CorpusTipGetResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelBean"
.end annotation


# instance fields
.field private corpus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCorpus()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponseData$ModelBean;->corpus:Ljava/util/List;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponseData$ModelBean;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public setCorpus(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponseData$ModelBean;->corpus:Ljava/util/List;

    return-void
.end method

.method public setPageName(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponseData$ModelBean;->pageName:Ljava/lang/String;

    return-void
.end method
