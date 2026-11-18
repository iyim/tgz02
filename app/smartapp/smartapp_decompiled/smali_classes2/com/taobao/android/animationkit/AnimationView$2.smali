.class Lcom/taobao/android/animationkit/AnimationView$2;
.super Ljava/lang/Object;
.source "AnimationView.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/animationkit/AnimationView;->setAnimResFolder(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/animationkit/AnimationView;


# direct methods
.method constructor <init>(Lcom/taobao/android/animationkit/AnimationView;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/taobao/android/animationkit/AnimationView$2;->this$0:Lcom/taobao/android/animationkit/AnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    .line 278
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".json"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
