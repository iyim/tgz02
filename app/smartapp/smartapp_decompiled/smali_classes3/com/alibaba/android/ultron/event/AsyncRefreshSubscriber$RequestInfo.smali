.class Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;
.super Ljava/lang/Object;
.source "AsyncRefreshSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestInfo"
.end annotation


# instance fields
.field lastRequestStatus:I

.field requestCount:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 300
    iput v0, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;->requestCount:I

    .line 302
    iput v0, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;->lastRequestStatus:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;)V
    .locals 0

    .line 299
    invoke-direct {p0}, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
