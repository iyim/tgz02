.class public Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/request/CorpusRequestData;
.super Ljava/lang/Object;
.source "CorpusRequestData.java"


# instance fields
.field private corpusLastClick:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private corpusLastView:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;

.field private pageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCorpusLastClick()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/request/CorpusRequestData;->corpusLastClick:Ljava/util/Map;

    return-object v0
.end method

.method public getCorpusLastView()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/request/CorpusRequestData;->corpusLastView:Ljava/util/Map;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/request/CorpusRequestData;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/request/CorpusRequestData;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public setCorpusLastClick(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/request/CorpusRequestData;->corpusLastClick:Ljava/util/Map;

    return-void
.end method

.method public setCorpusLastView(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/request/CorpusRequestData;->corpusLastView:Ljava/util/Map;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/request/CorpusRequestData;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPageName(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/genietalk/mtop/request/CorpusRequestData;->pageName:Ljava/lang/String;

    return-void
.end method
