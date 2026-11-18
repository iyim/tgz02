.class Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3;
.super Ljava/lang/Object;
.source "CleanerMainHeaderViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;->bindData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

.field final synthetic val$cache:F


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;F)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder;

    iput p2, p0, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3;->val$cache:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 205
    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/util/CleanFileUtil;->getCleanerOrangeConfig(Z)Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;->getOtherPath()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/util/CleanFileUtil;->getAllOtherSize(Ljava/util/ArrayList;)J

    move-result-wide v0

    .line 206
    new-instance v2, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3$1;-><init>(Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainHeaderViewHolder$3;J)V

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
