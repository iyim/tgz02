.class public Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/KGCard;
.super Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Card;
.source "KGCard.java"


# instance fields
.field private displayAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private guid:J

.field private imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;",
            ">;"
        }
    .end annotation
.end field

.field private linkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Card;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getImage()Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/KGCard;->imageList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/KGCard;->imageList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public open(Landroid/content/Context;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
