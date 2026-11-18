.class final Lcom/taobao/zcache/ZCache$1;
.super Ljava/lang/Thread;
.source "ZCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/zcache/ZCache;->setup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 83
    invoke-static {}, Lcom/taobao/zcache/ZCache;->installPreload()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
