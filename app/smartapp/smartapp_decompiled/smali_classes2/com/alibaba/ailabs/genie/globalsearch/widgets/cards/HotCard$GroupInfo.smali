.class Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;
.super Ljava/lang/Object;
.source "HotCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupInfo"
.end annotation


# instance fields
.field public bgImg:I

.field public groupIcon:I

.field public groupName:Ljava/lang/String;

.field public groupWidth:I

.field hasDeleteAll:Z

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;

.field public verticalGap:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;Ljava/lang/String;IIZII)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;->groupName:Ljava/lang/String;

    .line 102
    iput p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;->bgImg:I

    .line 103
    iput p4, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;->groupIcon:I

    .line 104
    iput-boolean p5, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;->hasDeleteAll:Z

    .line 105
    iput p6, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;->groupWidth:I

    .line 106
    iput p7, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/cards/HotCard$GroupInfo;->verticalGap:I

    return-void
.end method
