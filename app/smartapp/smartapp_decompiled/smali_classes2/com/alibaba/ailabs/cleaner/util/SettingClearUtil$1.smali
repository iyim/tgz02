.class final Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$1;
.super Ljava/lang/Object;
.source "SettingClearUtil.java"

# interfaces
.implements Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->clearAllAppCache(Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$infos:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$1;->val$infos:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClearFinish(Ljava/lang/String;Z)V
    .locals 1

    .line 69
    invoke-static {}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->access$000()I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    invoke-static {p1}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->access$002(I)I

    .line 70
    invoke-static {}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->access$000()I

    move-result p1

    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$1;->val$infos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-string p1, "SettingClearUtil-l"

    const-string v0, "clearAllAppCache finish..."

    .line 71
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->access$100()Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 73
    invoke-static {}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil;->access$100()Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;

    move-result-object p1

    const-string v0, "all"

    invoke-interface {p1, v0, p2}, Lcom/alibaba/ailabs/cleaner/util/SettingClearUtil$OnClearCallback;->onClearFinish(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
