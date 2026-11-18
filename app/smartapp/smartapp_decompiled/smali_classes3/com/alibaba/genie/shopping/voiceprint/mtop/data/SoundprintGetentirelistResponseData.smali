.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundprintGetentirelistResponseData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "SoundprintGetentirelistResponseData.java"


# instance fields
.field private model:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/voiceprint/mtop/data/EnhanceListItemModel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/voiceprint/mtop/data/EnhanceListItemModel;",
            ">;>;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundprintGetentirelistResponseData;->model:Ljava/util/Map;

    return-object v0
.end method

.method public setModel(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/voiceprint/mtop/data/EnhanceListItemModel;",
            ">;>;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundprintGetentirelistResponseData;->model:Ljava/util/Map;

    return-void
.end method
