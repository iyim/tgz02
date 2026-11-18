.class final Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;
.super Ljava/lang/Object;
.source "TLogger.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/umbrella/link/TLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LinkLogTLogDO"
.end annotation


# instance fields
.field umb1:Ljava/lang/String;

.field umb10:Ljava/lang/String;

.field umb11:Ljava/lang/String;

.field umb12:Ljava/lang/String;

.field public umb13:Ljava/lang/String;

.field public umb14:Ljava/lang/String;

.field public umb15:Ljava/lang/String;

.field public umb16:Ljava/lang/String;

.field public umb17:Ljava/lang/String;

.field public umb18:Ljava/lang/String;

.field public umb19:Ljava/lang/String;

.field umb2:Ljava/lang/String;

.field umb20:Ljava/lang/Object;

.field umb21:Ljava/lang/String;

.field umb22:Ljava/lang/String;

.field umb23:Ljava/lang/String;

.field umb24:Ljava/lang/String;

.field umb25:Ljava/lang/String;

.field umb26:Ljava/lang/String;

.field umb27:Ljava/lang/String;

.field umb28:Ljava/lang/String;

.field umb29:Ljava/lang/String;

.field umb3:Ljava/lang/String;

.field umb30:Ljava/lang/String;

.field umb31:Ljava/lang/String;

.field umb32:Ljava/lang/String;

.field umb33:Ljava/lang/String;

.field umb34:Ljava/lang/String;

.field umb35:Ljava/lang/String;

.field umb4:Ljava/lang/String;

.field umb5:Ljava/lang/String;

.field umb6:Ljava/lang/String;

.field umb7:Ljava/lang/String;

.field umb8:Ljava/lang/String;

.field umb9:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1

    .line 201
    new-instance p0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;

    invoke-direct {p0}, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;-><init>()V

    const-string v0, "main"

    .line 202
    iput-object v0, p0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb1:Ljava/lang/String;

    const-string v0, "child"

    .line 203
    iput-object v0, p0, Lcom/alibaba/android/umbrella/link/TLogger$LinkLogTLogDO;->umb2:Ljava/lang/String;

    return-void
.end method
