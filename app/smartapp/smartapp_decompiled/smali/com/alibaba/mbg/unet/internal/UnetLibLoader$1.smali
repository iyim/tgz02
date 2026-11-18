.class final Lcom/alibaba/mbg/unet/internal/UnetLibLoader$1;
.super Ljava/lang/Object;
.source "UnetLibLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mbg/unet/internal/UnetLibLoader;->ensureInitialized(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/UnetLibLoader$1;->val$applicationContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UnetLibLoader$1;->val$applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/UnetLibLoader;->ensureInitializedOnMainThread(Landroid/content/Context;)V

    return-void
.end method
