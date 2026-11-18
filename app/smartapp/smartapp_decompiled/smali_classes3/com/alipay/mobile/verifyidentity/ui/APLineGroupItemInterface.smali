.class public interface abstract Lcom/alipay/mobile/verifyidentity/ui/APLineGroupItemInterface;
.super Ljava/lang/Object;
.source "APLineGroupItemInterface.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/ui/APViewInterface;


# static fields
.field public static final BOTTOM:I = 0x12

.field public static final CENTER:I = 0x13

.field public static final LINE:I = 0x14

.field public static final NORMAL:I = 0x10

.field public static final TOP:I = 0x11

.field public static final VISUAL_STYLE_LIST_ITEM:I = 0x11

.field public static final VISUAL_STYLE_ROUND_CORNER:I = 0x10

.field public static final sInjector:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    :goto_0
    sput-object v0, Lcom/alipay/mobile/verifyidentity/ui/APLineGroupItemInterface;->sInjector:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public abstract getVisibility()I
.end method

.method public abstract setItemPositionStyle(I)V
.end method

.method public abstract setVisualStyle(I)V
.end method
