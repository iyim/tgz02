.class public Lunet/org/chromium/base/FieldTrialList;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lunet/org/chromium/base/annotations/MainDex;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static native nativeFindFullName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeTrialExists(Ljava/lang/String;)Z
.end method
