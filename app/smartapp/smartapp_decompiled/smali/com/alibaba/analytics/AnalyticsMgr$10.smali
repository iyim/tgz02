.class final Lcom/alibaba/analytics/AnalyticsMgr$10;
.super Ljava/lang/Object;
.source "AnalyticsMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/analytics/AnalyticsMgr;->createUpdateUserAccountTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$aOpenid:Ljava/lang/String;

.field final synthetic val$aUserid:Ljava/lang/String;

.field final synthetic val$aUsernick:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/alibaba/analytics/AnalyticsMgr$10;->val$aUsernick:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/analytics/AnalyticsMgr$10;->val$aUserid:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/analytics/AnalyticsMgr$10;->val$aOpenid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 472
    :try_start_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->iAnalytics:Lcom/alibaba/analytics/IAnalytics;

    iget-object v1, p0, Lcom/alibaba/analytics/AnalyticsMgr$10;->val$aUsernick:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/analytics/AnalyticsMgr$10;->val$aUserid:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/analytics/AnalyticsMgr$10;->val$aOpenid:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/analytics/IAnalytics;->updateUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 474
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
