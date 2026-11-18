.class public final synthetic Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$AutoPlayMask$6fCrMf8eyNmo5NZmwD2BtCkQ8RI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;

.field private final synthetic f$1:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$AutoPlayMask$6fCrMf8eyNmo5NZmwD2BtCkQ8RI;->f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$AutoPlayMask$6fCrMf8eyNmo5NZmwD2BtCkQ8RI;->f$1:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$AutoPlayMask$6fCrMf8eyNmo5NZmwD2BtCkQ8RI;->f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$AutoPlayMask$6fCrMf8eyNmo5NZmwD2BtCkQ8RI;->f$1:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->lambda$setGroupType$21$AutoPlayMask(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
