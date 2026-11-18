.class Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$4;
.super Ljava/lang/Object;
.source "ShoppingSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->showSearchResultEmptyPage(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "genie://com.alibaba.ailabs.genie.launcher/channel?menuBusinessType=shopping&modeType=0"

    .line 440
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 441
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 442
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
