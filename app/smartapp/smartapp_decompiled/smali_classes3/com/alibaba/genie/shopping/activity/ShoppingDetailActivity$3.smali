.class Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$3;
.super Ljava/lang/Object;
.source "ShoppingDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->processData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$3;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$3;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$000(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$100(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;Ljava/lang/String;)V

    return-void
.end method
