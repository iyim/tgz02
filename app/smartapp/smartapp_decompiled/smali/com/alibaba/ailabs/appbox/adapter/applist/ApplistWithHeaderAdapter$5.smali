.class Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$5;
.super Ljava/lang/Object;
.source "ApplistWithHeaderAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->deleteApplet(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

.field final synthetic val$dbean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$5;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$5;->val$dbean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$5;->val$dbean:Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/db/CollectionDBUtil;->delete(Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    return-void
.end method
