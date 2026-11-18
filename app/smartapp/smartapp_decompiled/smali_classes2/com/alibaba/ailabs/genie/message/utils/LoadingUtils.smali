.class public final Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;
.super Ljava/lang/Object;
.source "LoadingUtils.java"


# static fields
.field private static sGenieLoadingArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;->sGenieLoadingArray:Landroid/util/SparseArray;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static destroy()V
    .locals 3

    const/4 v0, 0x0

    .line 98
    :goto_0
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;->sGenieLoadingArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 99
    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;->sGenieLoadingArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 100
    sget-object v2, Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;->sGenieLoadingArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    if-nez v1, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    sget-object v0, Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;->sGenieLoadingArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static dismiss(I)V
    .locals 3

    .line 65
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/utils/ContextUtils;->getMessageCenterActivity()Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    move-result-object v0

    .line 67
    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;->sGenieLoadingArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    if-nez v1, :cond_0

    .line 69
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;->getGenieLoading(Landroid/app/Activity;I)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    return-void

    .line 73
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;->sGenieLoadingArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 74
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V

    const-string p0, "LoadingUtils"

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "genieLoading"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "sGenieLoadingArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;->sGenieLoadingArray:Landroid/util/SparseArray;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static dismiss(Landroid/app/Activity;I)V
    .locals 1

    .line 83
    :try_start_0
    sget-object p0, Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;->sGenieLoadingArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    if-nez p0, :cond_0

    return-void

    .line 88
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;->sGenieLoadingArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 89
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static getGenieLoading(Landroid/app/Activity;I)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;
    .locals 1

    .line 115
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;->sGenieLoadingArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;-><init>(Landroid/app/Activity;)V

    .line 119
    sget-object p0, Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;->sGenieLoadingArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isShowing(I)Z
    .locals 1

    .line 39
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/utils/ContextUtils;->getMessageCenterActivity()Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;->getGenieLoading(Landroid/app/Activity;I)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->isShowing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static show(I)V
    .locals 2

    .line 25
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/utils/ContextUtils;->getMessageCenterActivity()Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;->sGenieLoadingArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;->getGenieLoading(Landroid/app/Activity;I)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static show(Landroid/app/Activity;I)V
    .locals 1

    if-eqz p0, :cond_1

    .line 51
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;->sGenieLoadingArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/message/utils/LoadingUtils;->getGenieLoading(Landroid/app/Activity;I)Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widget/GenieProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
