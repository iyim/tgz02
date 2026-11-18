.class Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$1;
.super Ljava/lang/Object;
.source "ShoppingSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 72
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->finish()V

    return-void
.end method
