.class public interface abstract Lcom/taobao/android/AliConfigListener;
.super Ljava/lang/Object;
.source "AliConfigListener.java"


# static fields
.field public static final CONFIG_VERSION:Ljava/lang/String; = "configVersion"

.field public static final FROM_CACHE:Ljava/lang/String; = "fromCache"


# virtual methods
.method public abstract onConfigUpdate(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
