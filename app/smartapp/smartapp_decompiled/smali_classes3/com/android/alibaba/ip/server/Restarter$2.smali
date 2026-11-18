.class final Lcom/android/alibaba/ip/server/Restarter$2;
.super Ljava/lang/Object;
.source "Restarter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/alibaba/ip/server/Restarter;->showToast(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/alibaba/ip/server/Restarter$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/alibaba/ip/server/Restarter$2;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "InstantPatch"

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/android/alibaba/ip/server/Restarter$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 80
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_0

    .line 81
    nop

    nop

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Couldn\'t show toast: no base context"

    .line 83
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 91
    iget-object v2, p0, Lcom/android/alibaba/ip/server/Restarter$2;->val$text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x3c

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/alibaba/ip/server/Restarter$2;->val$text:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 95
    :cond_2
    iget-object v2, p0, Lcom/android/alibaba/ip/server/Restarter$2;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/android/alibaba/ip/server/Restarter$2;->val$text:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Couldn\'t show toast"

    .line 97
    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
