.class public Lcom/taobao/android/AliNavServiceImp;
.super Ljava/lang/Object;
.source "AliNavServiceImp.java"

# interfaces
.implements Lcom/taobao/android/AliNavServiceInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public from(Landroid/content/Context;)Lcom/taobao/android/AliNavInterface;
    .locals 1

    .line 9
    new-instance v0, Lcom/taobao/android/AliNavImp;

    invoke-static {p1}, Lcom/taobao/android/nav/Nav;->from(Landroid/content/Context;)Lcom/taobao/android/nav/Nav;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/taobao/android/AliNavImp;-><init>(Lcom/taobao/android/nav/Nav;)V

    return-object v0
.end method
