.class public Lcom/taobao/android/AliConfigListenerAdapter;
.super Ljava/lang/Object;
.source "AliConfigListenerAdapter.java"

# interfaces
.implements Lcom/taobao/orange/OConfigListener;


# instance fields
.field private final mAliConfigListener:Lcom/taobao/android/AliConfigListener;


# direct methods
.method public constructor <init>(Lcom/taobao/android/AliConfigListener;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/taobao/android/AliConfigListenerAdapter;->mAliConfigListener:Lcom/taobao/android/AliConfigListener;

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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

    .line 27
    iget-object v0, p0, Lcom/taobao/android/AliConfigListenerAdapter;->mAliConfigListener:Lcom/taobao/android/AliConfigListener;

    invoke-interface {v0, p1, p2}, Lcom/taobao/android/AliConfigListener;->onConfigUpdate(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
