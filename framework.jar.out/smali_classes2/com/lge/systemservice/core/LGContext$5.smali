.class final Lcom/lge/systemservice/core/LGContext$5;
.super Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;
.source "LGContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/systemservice/core/LGContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/lge/systemservice/core/LGContext$LGServiceManagerFetcher;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createServiceManager(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 331
    new-instance v0, Lcom/lge/systemservice/core/WatchNetStorageManager;

    invoke-direct {v0, p1}, Lcom/lge/systemservice/core/WatchNetStorageManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
