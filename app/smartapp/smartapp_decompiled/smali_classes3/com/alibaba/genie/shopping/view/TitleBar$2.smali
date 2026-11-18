.class Lcom/alibaba/genie/shopping/view/TitleBar$2;
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


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/view/TitleBar;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/TitleBar$2;->this$0:Lcom/alibaba/genie/shopping/view/TitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 57
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MAIN"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.HOME"

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x200000

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/TitleBar$2;->this$0:Lcom/alibaba/genie/shopping/view/TitleBar;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/view/TitleBar;->access$000(Lcom/alibaba/genie/shopping/view/TitleBar;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
