.class Lcom/alibaba/genie/shopping/view/TitleBar$1;
.super Ljava/lang/Object;
.source "TitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/view/TitleBar;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/view/TitleBar;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/view/TitleBar;Landroid/content/Context;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/TitleBar$1;->this$0:Lcom/alibaba/genie/shopping/view/TitleBar;

    iput-object p2, p0, Lcom/alibaba/genie/shopping/view/TitleBar$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 46
    iget-object p1, p0, Lcom/alibaba/genie/shopping/view/TitleBar$1;->val$context:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 47
    nop

    nop

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 49
    invoke-static {p1}, Lcom/alibaba/genie/shopping/utils/KeyUtil;->sendKeyEvent(I)V

    :goto_0
    return-void
.end method
