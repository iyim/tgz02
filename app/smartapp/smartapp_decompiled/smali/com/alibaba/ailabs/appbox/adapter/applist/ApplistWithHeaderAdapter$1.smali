.class Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$1;
.super Ljava/lang/Object;
.source "ApplistWithHeaderAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->refreshData(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$1;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter$1;->this$0:Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/adapter/applist/ApplistWithHeaderAdapter;->notifyDataSetChanged()V

    return-void
.end method
