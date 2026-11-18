.class abstract Lcom/uc/base/net/metrics/HttpConnectionMetricsBase;
.super Ljava/lang/Object;
.source "HttpConnectionMetricsBase.java"

# interfaces
.implements Lcom/uc/base/net/metrics/HttpConnectionMetricsListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public abstract getMetrics(Ljava/lang/String;Lcom/uc/base/net/metrics/HttpConnectionMetricsType;)Ljava/lang/String;
.end method

.method public abstract getReceivedBytesCount(Ljava/lang/String;)J
.end method

.method public abstract getRequestCount(Ljava/lang/String;)J
.end method

.method public abstract getResponseCount(Ljava/lang/String;)J
.end method

.method public abstract getSentBytesCount(Ljava/lang/String;)J
.end method

.method public abstract resetMetrics(Ljava/lang/String;)V
.end method
