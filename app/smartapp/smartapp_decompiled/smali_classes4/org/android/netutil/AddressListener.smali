.class public abstract Lorg/android/netutil/AddressListener;
.super Lorg/android/netutil/NetListener;
.source "AddressListener.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    sget-object v0, Lorg/android/netutil/NetListenerType;->NL_NEW_IP_ADDRESS:Lorg/android/netutil/NetListenerType;

    invoke-direct {p0, v0}, Lorg/android/netutil/NetListener;-><init>(Lorg/android/netutil/NetListenerType;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public abstract onNewAddress(Ljava/lang/String;)V
.end method
