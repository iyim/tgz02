.class Lcom/taobao/android/ultron/datamodel/imp/DMRequester$2;
.super Landroid/os/AsyncTask;
.source "DMRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->doExecute(Ljava/lang/Object;Lcom/taobao/android/ultron/datamodel/AbsRequestCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;


# direct methods
.method constructor <init>(Lcom/taobao/android/ultron/datamodel/imp/DMRequester;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$2;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 560
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 565
    :try_start_0
    iget-object p1, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$2;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object p1, p1, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester$2;->this$0:Lcom/taobao/android/ultron/datamodel/imp/DMRequester;

    iget-object v0, v0, Lcom/taobao/android/ultron/datamodel/imp/DMRequester;->bizName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/taobao/android/ultron/datamodel/cache/UltronTemplateManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x2

    .line 567
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "getInstance"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "DMRequester"

    invoke-static {p1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
