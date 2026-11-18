.class public final synthetic Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$AutoPlayMask$KL0Wjw5c4cM7GZBZgwkUIhl0gdA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;

.field private final synthetic f$1:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;


# direct methods
.method public synthetic constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$AutoPlayMask$KL0Wjw5c4cM7GZBZgwkUIhl0gdA;->f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$AutoPlayMask$KL0Wjw5c4cM7GZBZgwkUIhl0gdA;->f$1:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$AutoPlayMask$KL0Wjw5c4cM7GZBZgwkUIhl0gdA;->f$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/-$$Lambda$AutoPlayMask$KL0Wjw5c4cM7GZBZgwkUIhl0gdA;->f$1:Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/AutoPlayMask;->lambda$setGroupType$20$AutoPlayMask(Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;Landroid/view/View;)V

    return-void
.end method
