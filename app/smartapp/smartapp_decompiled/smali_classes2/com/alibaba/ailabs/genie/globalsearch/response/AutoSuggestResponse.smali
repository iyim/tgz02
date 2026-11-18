.class public Lcom/alibaba/ailabs/genie/globalsearch/response/AutoSuggestResponse;
.super Lcom/alibaba/ailabs/genie/globalsearch/response/BaseResponse;
.source "AutoSuggestResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/globalsearch/response/BaseResponse<",
        "Ljava/util/List<",
        "Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field keyWord:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/globalsearch/response/BaseResponse;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/response/AutoSuggestResponse;->keyWord:Ljava/lang/String;

    return-object v0
.end method

.method public setKeyWord(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/response/AutoSuggestResponse;->keyWord:Ljava/lang/String;

    return-void
.end method
