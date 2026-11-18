.class public Lcom/alibaba/ailabs/geniesdk/ut/NativeUTAnalytics;
.super Ljava/lang/Object;
.source "NativeUTAnalytics.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;


# instance fields
.field private mIUTAnalytics:Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ut/NativeUTAnalytics;->mIUTAnalytics:Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;

    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ut/NativeUTAnalytics;->mIUTAnalytics:Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;

    if-eqz v0, :cond_0

    .line 17
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/ailabs/geniesdk/ut/IUTAnalytics;->send(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
