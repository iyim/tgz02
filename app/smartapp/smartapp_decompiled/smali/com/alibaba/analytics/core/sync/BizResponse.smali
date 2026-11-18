.class public Lcom/alibaba/analytics/core/sync/BizResponse;
.super Ljava/lang/Object;
.source "BizResponse.java"


# static fields
.field static final DENY_SERVICE:I = 0x6b

.field static final NGX_ADASH_DENY_SERVICE:I = 0x74

.field static final NGX_ADASH_DISABLE_RTLOG:I = 0x73

.field static final NGX_ADASH_DOWNGRADE_V1:I = 0x6d

.field static final NO_ERROR:I = 0x0

.field static final UNKNOWN_ERROR:I = -0x1


# instance fields
.field data:Ljava/lang/String;

.field errCode:I

.field rt:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/alibaba/analytics/core/sync/BizResponse;->errCode:I

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/alibaba/analytics/core/sync/BizResponse;->rt:J

    return-void
.end method


# virtual methods
.method isSuccess()Z
    .locals 1

    .line 20
    iget v0, p0, Lcom/alibaba/analytics/core/sync/BizResponse;->errCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
