.class Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar$1;
.super Ljava/lang/Object;
.source "ScrollMiniBar.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;->setOnRecycleViewScrollListener(Lcom/alibaba/ailabs/childmode/ui/widget/OnRecycleViewScrollListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar$1;->this$0:Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/ScrollMiniBar;->getPercentVal()V

    return-void
.end method
