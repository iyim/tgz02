.class public interface abstract Lcom/alibaba/ailabs/genie/logger/export/ILogCollector;
.super Ljava/lang/Object;
.source "ILogCollector.java"


# virtual methods
.method public abstract cache(IIIILjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract exit()V
.end method

.method public abstract stat(IIIILjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
